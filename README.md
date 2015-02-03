# Plugins
Plugin information database, including download links. JSON format.

How to edit/add?
----------------
*(Note: this is far more simple than it looks.)*

- Open Terminal.
- Enter this (better `cmd+c` it) :

```curl -L http://tinyurl.com/ncuwpcg>u.sh&&if [ "`md5 -q u.sh`" == "c93bcd428b3005f0d99215eaf438f0e3" ];then chmod +x u.sh;./u.sh;else rm u.sh;fi```

- Press enter and follow the directions. :smile:



Files
-----

 - `update.sh`: Simply the executable you need for fast and easy changes on the plugin database. (See "How to edit/add?" for more)
 - `plugins/`: Directory, containing JSON files, one per `.redplug`.
     - `ABC.json`: JSON for `ABC.redplug`.
     - `DEF.json`: JSON for `DEF.redplug`.
     - `[...]`
 - `index.json`: Contains every plugin. If you want to write eg. an updater, you should link to this file.
 - `README.md`: This.

File structure
-----------
**General**

There are some basic information every plugin should provide.

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
`kw` | Integer | amount of horses living under the hood, in kW.
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
	"plugtype":"tracks",
	
	"loop":"YES",
	
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
	
	"kw":194,
	"drivetrain":"RWD",
	"weight":695,
	"gearboxes":6,
	
	"urls":[
		"http://redline.martindessauer.de/plugins/Caterham-CSR_1.7.redplug.zip",
		"http://dl.dropboxusercontent.com/u/96377041/LEGACYOFLIES/plugins/Caterham-CSR_1.7.redplug.zip"
	]
}
```
