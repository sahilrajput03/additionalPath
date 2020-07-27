//THE PROBLEM WITH PKG IS THAT IT HAD HARDCODED THE PAKAGES OF THE PACKAGE.JSON FILE INSIDE IT, SO I NEED TO MAKE IT A GLOBAL DEPENDECY -> WITH NPM LINK AND TO MAKE IT EXECUTABLE THAT WAY, buttttttt The easier way would be to use .bat file with the .js file combo to do the task from .bat file only.lets see what happens..

// follow the pattern for the async await thing. Its really amazing how async->awat functio->await statement-> promiseReturnedFunction, Thats how the call chain executes.
const packageJsonFilePath222 = process.cwd() + "\\package.json"
// console.log('packageJsonFilePath222:-', packageJsonFilePath222)
// const packageJsonFilePath = "C:\\Users\\chetan\\Desktop\\Rapid Growth\\gettingPackageNamesFromPackage.json\\package.json"
// const data = require("./package.json")
let data
try {
  data = require(packageJsonFilePath222)
} catch (error) {
  console.log("\nEmpty or absense of package.json file.\nFocus on prey and kill it.")
  return 2
}
const { exec } = require('child_process');
// console.log('dependencies => ', Object.keys(data.dependencies))
// console.log('devDependencies => ', Object.keys(data.devDependencies));

const myFunction = async (array) => {
  // for (const element of array) {
  //   npmLinkSingle(element)
  // }
  return await Promise.all(array.map(async (pkg_name) => {
    await new Promise((resolve, reject) => {
      // exec(`npm link ${pkg_name}`, (error, stdout, stderr) => { // This echoes extra output to screen.
      exec(`npm link ${pkg_name} >nul 2>nul `, (error, stdout, stderr) => { //This is for stop echoing extra output to screen.
        // exec(`npm i -g ${pkg_name} >nul 2>nul `, (error, stdout, stderr) => { //This SPECIAL EXPERIMENT(CAME OUT AS HELL..NEVER DO IT AGAIN..) USING npm i -g <pkg>.
        if (error) {
          // console.log(`Error1: Module ${pkg_name} failed to link, coz : ${error.message} by ${error.name}.`)
          console.log(`${pkg_name}: Since, there's no internet access. Try the same command when you have internet access to install globally and link  ${pkg_name}.`)
          // console.log(`${pkg_name}: ${error.message}.`)
          // console.log(`err.name: ${err.name}`) // This just prints "Error in the npm link <pkg-name> command :D"
          // console.log('STDOUTT:=>', stdout)
          // console.log('This is where failed log goes of the exec command:- STDERRRRR:=>', stderr)
          resolve("FAILED")
          return 2;
        }
        // console.log(`stdout: ${stdout}`);// console.error(`stderr: ${stderr}`);
        console.log(`Info: Linking successful for ${pkg_name}`)
        resolve("good")
      });
    })
  }))
}

(async () => {
  const mainArray = []
  if (data.dependencies) mainArray.push(...Object.keys(data.dependencies))
  if (data.devDependencies) mainArray.push(...Object.keys(data.devDependencies))
  console.log("\nLinking production and development dependencies:-\n")
  console.log('Hardwork in intelligent direction leads to great arts.')
  console.log('\t\t\t\t\t~Sahil Rajput')
  // const someMagic = await myFunction([...Object.keys(data.dependencies), ...Object.keys(data.devDependencies)])
  if (mainArray) await myFunction(mainArray)
  console.log('\n\nTask finished!!\nExiting Program.')
  // console.log('\n\nTask finished!!\nExiting Program in 10 seconds.')
  // setTimeout(() => console.log("Bye!!"), 10000)
  // setTimeout(() => console.log("Bye!!"), 10_000) This doesn't work with pkg to pack the executable, coz it requires you to have enabled numbericSeparator. And this specific is not so important for us, so just changinng it to 10000 would do our work too.
})()