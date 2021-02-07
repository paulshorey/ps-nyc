const sharp = require("sharp")

const fs = require("fs")
const path = require("path")

const findImageFilesRecursive = function (dirPath = "", arrayOfFiles = []) {
  dirPath = "./" + dirPath
  let files = fs.readdirSync(dirPath)
  files.forEach(function (file) {
    // check each file
    if (fs.statSync(dirPath + "/" + file).isDirectory()) {
      arrayOfFiles = findImageFilesRecursive(dirPath + "/" + file, arrayOfFiles)
    } else {
      let ext = file.split(".").pop().toLowerCase()
      // only return supported image files
      if (["jpg", "jpeg", "gif", "png", "tif"].includes(ext)) {
        // save file
        arrayOfFiles.push(path.join(__dirname, dirPath, "/", file))
      }
    }
  })
  return arrayOfFiles
}

// FOLDER NAME FROM CLI first argument
const dir = process.argv.slice(2)[0] || "."

// RUN, then quit process after finished
;(async function () {
  try {
    // PROCESS EACH FILE in folder, RECURSIVELY
    let files = findImageFilesRecursive(dir)
    for (let file of files) {
      // metadata about the file
      let file_name_start = file.lastIndexOf("/") + 1
      let file_name = file.substr(file_name_start) + ""
      let file_path = file.substr(0, file_name_start)
      let file_thumb = file_path + "_thumb-" + file_name
      // delete old thumbnail
      if (file.includes("_thumb-")) {
        fs.unlinkSync(file)
        continue
      }
      // make new thumbnails
      // resize image
      await sharp(file).resize(null, 272).toFile(file_thumb).catch(console.warn)
    }

    // ERROR
  } catch (err) {
    console.error(err)
    process.exit()
  }
  process.exit()
})()
