// http://lum-customer-hl_bd02a605-zone-static:uyzxr2ej0vvs@zproxy.lum-superproxy.io:22225
// see https://apify.com/apify/web-scraper#page-function
async function pageFunction(context) {
  context.log.info(`!!! NEW PAGE !!!: ${context.request.url}`);
  let output = {
    url: context.request.url,
  };

  // // include external files
  // const libraryUrl = "https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js";
  // await new Promise((resolve) => {
  //     const script = document.createElement("script");
  //     script.src = libraryUrl;
  //     script.addEventListener('load', resolve);
  //     document.body.append(script);
  // });
  // const now = moment().format("ddd, hA");
  // context.log.info("NOW: " + now);

  // utility functions
  const sleep = ms => {
    return new Promise(resolve => setTimeout(resolve, ms))
  }
  function hash(string) {
    let hash = 0;
    if (string.length == 0)
      return hash;
    for (let i = 0; i < string.length; i++) {
      let charCode = string.charCodeAt(i);
      hash = ((hash << 7) - hash) + charCode;
      hash = hash & hash;
    }
    return hash;
  }
  let BASE_URL = 'https://stackoverflow.com'
  const $ = context.jQuery;

  try {
    //
    // results page - enqueue each job link
    // let pages_added = 0
    // for (let item of $('.js-result')) {
    //     let $item = $(item)
    //     // next listing
    //     let page_a = $item.find('h2 a')
    //     if (page_a.length) {
    //         let link = BASE_URL + page_a.attr('href')
    //         context.log.info(`ENQUEUE REQUEST URL: ${link}`);
    //         context.enqueueRequest({ url: link });
    //         pages_added++
    //     }
    // }
    // if (pages_added) {
    //     output.job_pages_enqueued = pages_added
    // }
    // let $count = $('#searchCountPages')
    // if ($count.length) {
    //     output.search_count_total = $count.text()
    // }

    //
    // results page - clean DOM
    $('.listResults > *:not(.js-result)').remove()

    //
    // results page - enqueue next page
    let $next_a = $('.s-pagination a:last-child')
    if ($next_a) {
      // only if last link was really the "next" button
      if ($next_a.text().includes('next')) {
        let link = BASE_URL + $next_a.attr('href')
        context.log.info(`ENQUEUE REQUEST URL: ${link}`);
        context.enqueueRequest({ url: link });
      }
    }

    //
    // job page - save content
    output.jobs = {}
    // wait for it
    await context.waitFor('.js-selected-result-preview');
    // note last job, to prevent infinite loop
    let lastJobKey = ''
    // infinite loop, until I detect 2 in a row, and break out:
    while (true) {
      let job = {}
      let $job = $('.js-selected-result-preview')
      if ($job.length) {
        let $title = $job.find('h1')
        let $subtitle = !!$title && $title.next()
        let $subsubtitle = !!$subtitle && $subtitle.next()
        // url
        job.url = ' ' + $title.find('a').attr('href')
        // title
        job.title = ' ' + $title.text()
        job.meta = ''
        // company
        let subtitle_text = !!$subtitle ? $subtitle.text() : ''
        let comp_i = subtitle_text.indexOf(' -')
        if (comp_i === -1) comp_i = subtitle_text.indexOf(' –')
        if (comp_i !== -1) {
          job.employer = subtitle_text.substring(0, comp_i)
          job.meta += subtitle_text.substr(comp_i + 1) + ' '
        } else {
          job.meta += subtitle_text + ' '
        }
        // meta
        if ($subsubtitle) {
          job.meta += $subsubtitle.text()
        }
        // body
        job.body = $job.find('#overview-items').html()||''
        job.body += $job.find('#company-items').html()||''
        job.body = job.body.replace(/<a/g,'&nbsp;<a')
        job.body = job.body.replace(/\/a>/g,'/a>&nbsp;')
      } else {
        break;
      }
      context.log.info(`FOUND JOB: ${typeof job}: ${job.title}`);
      // Two jobs in a row ??
      // Must be end of the while(true) loop (break the loop)
      if (lastJobKey === job.title + job.employer) {
        break;
      } else {
        lastJobKey = job.title + job.employer
      }
      // Return an object with the data extracted from the page.
      // It will be stored to the resulting dataset.
      if (job.title) {
        let title = job.title.toLowerCase()
        if (
          title.includes('part-time') ||
          title.includes('entry') ||
          title.includes('junior') ||
          title.includes('level i') ||
          title.includes('developer i') ||
          title.includes('engineer i') ||
          title.includes('level ii') ||
          title.includes('developer ii') ||
          title.includes('engineer ii') ||
          title.includes('level 1') ||
          title.includes('developer 1') ||
          title.includes('engineer 1') ||
          title.includes('level 2') ||
          title.includes('developer 2') ||
          title.includes('engineer 2')
        ) {
          continue
        }
        job.title = job.title.trim()
        let body = job.body.toLowerCase()
        if (
          body.includes('part-time') ||
          body.includes('entry') ||
          body.includes('junior') ||
          body.includes('level i') ||
          body.includes('developer i') ||
          body.includes('engineer i') ||
          body.includes('level ii') ||
          body.includes('developer ii') ||
          body.includes('engineer ii') ||
          body.includes('level 1') ||
          body.includes('developer 1') ||
          body.includes('engineer 1') ||
          body.includes('level 2') ||
          body.includes('developer 2') ||
          body.includes('engineer 2') ||
          /-.*?(\$[\d]{2},[\d]{3})/.test(body)
        ) {
          continue
        }
      }
      // save
      output.jobs[job.title + job.employer] = job
      // click next link
      let $nextToClick = $('.js-selected').next()
      if ($nextToClick) {
        $nextToClick.click()
      } else {
        break
      }
      // wait for result to load
      await sleep(500+Math.round(Math.random()*500))
    }
  } catch(err) {
    context.log.error(`ERROR !!!`);
    context.log.error(err.toString());
  }
  //
  // format output
  // if (typeof output.jobs === 'object') {
  //     output.jobs = Object.values(output.jobs)
  // }
  return output
}
