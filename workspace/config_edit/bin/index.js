#!/usr/bin/env node
const fs = require('fs')
const path = require('path')

function get_config_file_path()
{
    if (process.argv[2] == undefined)
        return path.resolve('./batchconfig.json')
    else
        return path.resolve(process.argv[2])
}
function get_output_file_path()
{
    if (process.argv[3] == undefined)
        return path.resolve('./out')
    else
        return path.resolve(process.argv[3])
}

function main()
{
    let config_file_path = get_config_file_path()
    let raw_data = fs.readFileSync(config_file_path)
    let config = JSON.parse(raw_data)

    let i = 0
    config['content'].forEach(
        element => {
            element["particle_sequence_offset"] = undefined

            // ability index
            if (element["is_spell"])
                element["ability_index"] = i
            else 
                if (element["is_item"])
                    element["ability_index"] = -1
                else
                    element["ability_index"] = i-8

            // particle sequence index
            let is_particle00 = i < 30
            let is_particle01 = i >= 30
            let particle_sequence_index = i % 30
            element["particle_sequence_index"] = i % 30

            // particle flags
            element["is_particle00"] = is_particle00
            element["is_particle01"] = is_particle01

            // particle vector offset
            let x_part = (particle_sequence_index >= 0 ? particle_sequence_index : 0)
            let y_part = (particle_sequence_index >= 10 ? particle_sequence_index : 0)
            let z_part = (particle_sequence_index >= 20 ? particle_sequence_index : 0)
            element["sequence_offset"] =`Vector(${x_part},${y_part},${z_part})`
        
            i++
        }
    )

    create_output_file(config)
}

function create_output_file(json)
{
    let out_dir = get_output_file_path();
    if (!fs.existsSync(out_dir)){
        fs.mkdirSync(out_dir);
    }
    fs.writeFileSync(out_dir + '/batchconfig.json', JSON.stringify(json, null, '\t'));
}

main()


