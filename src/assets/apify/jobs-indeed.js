// see https://apify.com/apify/web-scraper#page-function
async function pageFunction(context) {
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
  let BASE_URL = 'https://indeed.com'
  const $ = context.jQuery;

  //
  // results page - enqueue each job link
  let pages_added = 0
  for (let item of $('.result')) {
    let $item = $(item)
    // next listing
    let page_a = $item.find('.title a')
    if (page_a.length) {
      let link = BASE_URL + page_a.attr('href')
      context.log.info(`ENQUEUE REQUEST URL: ${link}`);
      context.enqueueRequest({ url: link });
      pages_added++
    }
  }
  if (pages_added) {
    output.job_pages_enqueued = pages_added
  }
  let $count = $('#searchCountPages')
  if ($count.length) {
    output.search_count_total = $count.text()
  }

  //
  // results page - enqueue next page
  let $next_el = $('.pagination-list li:last-child')
  if ($next_el) {
    // click "next"
    let path_el = $next_el.find('path')
    if (path_el) {
      let path_shape = path_el.attr('d')
      if (path_shape && path_shape ==='M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6-6-6z') {
        // only if last link was really the "next" button
        let next_a = $next_el.find('a')
        if (next_a.length) {
          let link = BASE_URL + next_a.attr('href')
          context.log.info(`ENQUEUE REQUEST URL: ${link}`);
          context.enqueueRequest({ url: link });
        }
      }
    }
  }

  //
  // job page - save content
  let job = {}
  let $resultHead = $('.jobsearch-DesktopStickyContainer')
  let $resultBody = $('.jobsearch-JobComponent-description')
  if ($resultHead.length && $resultBody.length) {
    // description
    job.title = ' '+$resultHead.find('.jobsearch-JobInfoHeader-title').text()
    let comp_el = $resultHead.find('.jobsearch-InlineCompanyRating')
    if (comp_el.find('a').length) {
      job.company = comp_el.find('a').first().text()
    } else {
      job.company = comp_el.text().replace(/-/g,' - ')
    }
    job.body = $resultBody.html()
    // meta data
    let original_a = $('#originalJobLinkContainer a')
    if (original_a) {
      job.original = original_a.attr('href')
    }
    job.meta = $('.jobsearch-JobMetadataFooter').text()
  }
  // Return an object with the data extracted from the page.
  // It will be stored to the resulting dataset.
  if (job.title) {
    let title = job.title.toLowerCase()
    if (
      title.includes(' c,') ||
      title.includes('-c,') ||
      title.includes(' c ') ||
      title.includes('c++') ||
      title.includes('c#') ||
      title.includes('.net') ||
      title.includes(' java ') ||
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
      return null
    }
    job.title = job.title.trim()
    let body = job.body.toLowerCase()
    if (
      body.includes(' c,') ||
      body.includes('-c,') ||
      body.includes(' c ') ||
      body.includes('c++') ||
      body.includes('c#') ||
      body.includes('.net') ||
      body.includes(' java ') ||
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
      return null
    }
    // job is ok
    output.job = job
  }
  return output
}
