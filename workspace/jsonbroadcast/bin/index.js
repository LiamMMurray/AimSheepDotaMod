#!/usr/bin/env node
const fs = require('fs')
const path = require('path')
const glob = require('glob')
const { finished } = require('stream')
const { COPYFILE_FICLONE } = require('constants')
const execSync = require('child_process').execSync;
const { exec } = require('child_process')

let current_directory = process.cwd()
let config_file_name = process.argv[2]
let content_directory = process.argv[3]
let broadcast_content;
let broadcast_paths;
function validate_args_exist()
{
    if (config_file_name == undefined || content_directory == undefined)
    {
        console.log("\tjsonbroadcast <json file containing subdirectories> <directory with contents to be broadcast>");
        return;
    }
}

function process_json_file(file_name)
{
    if (file_name == "")
    {
        console.log("\tno input file specified");
        return;
    }
    if (!fs.existsSync(file_name))
    {
        console.log("\tfile not found: " + file_name);
        return;
    }
    let input_file_contents_raw = fs.readFileSync(file_name)
    let input_file_contents = JSON.parse(input_file_contents_raw);
    return input_file_contents;
}

function main()
{
    validate_args_exist();

    let config_file_contents = process_json_file(config_file_name);

    broadcast_paths = config_file_contents.folders.map(element => element.path);

    let pattern = current_directory + "\\" + content_directory + "\\**\\*";
    glob(pattern, { dot:true }, (err, res)=>{
        if (err)
            console.log(err);
        else
        {
            broadcast_content = res;
            next();
        }
    })
}

function next()
{
    for (let i = 0; i < broadcast_content.length; i++)
    {
        for (let j = 0; j < broadcast_paths.length; j++)
        {
            let src_file = path.resolve(broadcast_content[i])
            let relative_dir = path.dirname(path.relative(content_directory, src_file));
            if (relative_dir == ".")
                relative_dir = ""

            let dest_dir = path.resolve(broadcast_paths[j] + "\\" + relative_dir)
            let relative_filename = path.parse(src_file).base;
            let dest_file = dest_dir + "\\" + relative_filename;

            if (!fs.existsSync(dest_dir)){
                fs.mkdirSync(dest_dir)
            }
    
            if (fs.lstatSync(src_file).isFile())
            {
                fs.copyFileSync(src_file, dest_file)
            }
        }
    }

    for (let i = 0; i < broadcast_paths.length; i++)
    {
        let output_path = path.resolve(broadcast_paths[i])

        console.log(
            " java -jar " + "\"" + output_path + "\\batchfiles.jar" + "\" \"" + output_path + "\""
        )
        execSync(            
            " java -jar " + "\"" + output_path + "\\batchfiles.jar" + "\" \"" + output_path + "\"",
            { encoding: 'utf-8' }
        )

    }
}

main()