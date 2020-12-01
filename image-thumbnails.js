const sharp = require("sharp")

const fs = require("fs")
const path = require("path")

const getAllFilePaths = function (dirPath = "", arrayOfFiles = []) {
  dirPath = "./" + dirPath
  let files = fs.readdirSync(dirPath)
  files.forEach(function (file) {
    if (fs.statSync(dirPath + "/" + file).isDirectory()) {
      arrayOfFiles = getAllFilePaths(dirPath + "/" + file, arrayOfFiles)
    } else {
      arrayOfFiles.push(path.join(__dirname, dirPath, "/", file))
    }
  })
  return arrayOfFiles
}

const myArgs = process.argv.slice(2)
const dir = myArgs[0]

;(async function () {
  try {
    /*
     * PROCESS EACH SUBFOLDER IN FOLDER, RECURSIVELY
     */
    for (let file of getAllFilePaths(dir)) {
      // rename
      // if (file.includes(".thumb-")) {
      //   let file_fix = file.replace(".thumb-", "_thumb-")
      //   fs.rename(file, file_fix, () => {})
      //   continue
      // }
      let file_name_start = file.lastIndexOf("/") + 1
      let file_name = file.substr(file_name_start)
      let file_path = file.substr(0, file_name_start)
      let file_thumb = file_path + "_thumb-" + file_name
      /*
       * RESIZE ALL IMAGES IN FOLDER
       */
      // const thumb =
      await sharp(file).resize(null, 272).toFile(file_thumb).catch(console.warn)
      // console.log(typeof thumb, file_thumb)
    }

    /*
     * ERROR?
     */
  } catch (err) {
    console.error(err)
    process.exit()
  }
  process.exit()
})()
