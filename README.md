# Plugins
Plugin information database, including download links. JSON format.

How to edit/add?
----------------
**via command line**

1. Execute `git clone https://github.com/RedlineReborn/Plugins.git` in Terminal
2. There's now a folder `Plugins`, containing this repository. Search for the `.json` you want to edit.
3. Edit.
4. Execute `git commit -m "Some Update Text here"`. Please enter some useful text!
5. Execute `git push`. You need to type in your GitHub login data if you get asked for it.

**online**

1. Search for the `.json` to edit, usually [here](https://github.com/RedlineReborn/Plugins/tree/master/plugins "plugins folder").
2. Edit it.
3. Enter some *useful* description. Then "Commit Changes"


Files
-----

 - `generateIndex.py`: Generates the file `index.json`, including all plugins.
 - `plugins/`: Directory, containing JSON files, one per `.redplug`.
     - `ABC.json`: JSON for `ABC.redplug`.
     - `DEF.json`: JSON for `DEF.redplug`.
     - `[...]`
 - `index.json`: Containing every plugin. See below for structure.
 
Index Generator
----------------
**(`generateIndex.py`, `index.json`)**

This file generates the file `index.json` which simply contains every `.json` from `plugins/`.


File structure
-----------
**General**

There are some basic information every plugin must provide.

Name | Possible Values | Explanation
-----|-----------------|------------
`plugname` | String | screen name or `.redplug` name
`plugsize` | Integer | file size, in bytes
`plugtype` | `cars`, `tracks`, `misc`, `bundle` | plugin type. `Bundle`, if multiple values
`urls` | String List | List containing hotlink URLs to `.zip`s of the redplugs.
`comment` | String | A comment. (Optional)
`creator` | String | The creator. (Optional)


**Cars**

Name | Possible Values | Explanation
-----|-----------------|------------
`ps` | Integer | amount of horses living under the hood.
`drivetrain` | `fwd`, `rwd`, `4wd` | drive train.
`weight` | Integer | car weight.
`gearboxes` | Integer | amount of gears.


**Tracks**

Name | Possible Values | Explanation
-----|-----------------|------------
`loop` | `YES`, `NO` | is the track looped or not?


**Example**

(Track `Alpenpass`)

```
{
    "plugname":"Alpenpass",
    "plugsize":2389448,
    "plugtype":"tracks"
    "urls":[
        "http://redline.martindessauer.de/plugins/alpenpass.zip",
		"http://dl.dropboxusercontent.com/u/96377041/LEGACYOFLIES/plugins/alpenpass.zip"
	]
}
```

(Car `Caterham CSR`)

```
{
    "plugname":"Caterham CSR",
    "plugsize":6489923,
	"plugtype":"cars",
	"urls":[
		"http://redline.martindessauer.de/plugins/Caterham-CSR_1.7.redplug.zip",
			"http://dl.dropboxusercontent.com/u/96377041/LEGACYOFLIES/plugins/Caterham-CSR_1.7.redplug.zip"
	]
}
```
