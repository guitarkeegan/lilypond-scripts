#!/usr/bin/env node

"use-strict";

const { exec } = require('node:child_process');
const path = require('path');
const fs = require('fs');

const BASEPATH = path.resolve(__dirname);


args = require('minimist')(process.argv.slice(2), {
    boolean: ["help"],
    string: ["file", "out"]
});

if (args.help || process.argv.length <= 2) {
	error("Must give arguments", true);
} else if (args.file) {
    let outpath;
    const filePath = path.join(BASEPATH, args.file);
        // run the `ls` command using exec
        if (args.out){
            outpath = path.join(__dirname, outpath);
        }
        exec("lilypond " + "-fsvg " + filePath, (err, output) => {
            // once the command has completed, the callback function is called
            if (err) {
                // log and return if we encounter an error
                error(err, true)
                return
            }
            // log the output received from the command
            console.log("File output success! \n");
        });

        setTimeout(()=>{
            exec("lilypond " + filePath, (err, output) => {
                // once the command has completed, the callback function is called
                if (err) {
                    // log and return if we encounter an error
                    error(err, true)
                    return
                }
                // log the output received from the command
                console.log("File output success! \n");
            });
        }, 2000)
}

function error(err,showHelp = false) {
	process.exitCode = 1;
	console.error(err);
	if (showHelp) {
		console.log("");
		printHelp();
	}
}

function printHelp(){
    console.log("pdf-svg usage");
    console.log("*******************************");
    console.log("This program will render a lilypond file to both pdf and svg formats.");
    console.log("");
    console.log("--file={FILE_NAME}                    file to render");
    console.log("");
}