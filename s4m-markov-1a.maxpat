{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 50.0, 100.0, 795.0, 702.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "s4m",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 351.0, 440.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 171.000002205371857, 7.0, 79.0, 22.0 ],
					"text" : "(s1 'run-step)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.0, 38.0, 70.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "(s4m-reset)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 38.0, 61.0, 22.0 ],
					"text" : "(live-stop)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.600000530481339, 38.0, 61.0, 22.0 ],
					"text" : "(live-play)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 698.0, 214.5, 78.0, 20.0 ],
					"text" : "'transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.0, 387.0, 62.0, 22.0 ],
					"text" : "24 70 120"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 520.0, 61.0, 22.0 ],
					"text" : "s #note-in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.750002205371857, 174.0, 59.0, 22.0 ],
					"text" : "r #note-in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 647.0, 182.0, 52.0, 20.0 ],
					"text" : "'locate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-49",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 477.0, 241.5, 41.600000619888306, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 392.0, 119.0, 71.200001060962677, 20.0 ],
					"text" : "'tempo-line"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 346.0, 118.0, 40.0, 22.0 ],
					"text" : "line",
					"varname" : "tempo-line"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 346.0, 149.0, 59.0, 22.0 ],
					"text" : "tempo $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 354.0, 320.0, 23.099999904632568, 23.099999904632568 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 423.0, 352.0, 52.800000786781311, 20.0 ],
					"text" : "'metro"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.0, 267.5, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 451.0, 392.0, 29.19999486207962, 29.19999486207962 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 353.0, 351.0, 60.0, 23.0 ],
					"text" : "metro 4n",
					"varname" : "metro"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 603.0, 181.0, 42.0, 22.0 ],
					"varname" : "locate"
				}

			}
, 			{
				"box" : 				{
					"attr" : "tempo",
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-17",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 425.0, 149.0, 152.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 631.25, 241.0, 79.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 302.0, 183.0, 39.0, 23.0 ],
					"text" : "sel 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 571.0, 242.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 528.0, 241.5, 30.249997019767761, 23.0 ],
					"text" : "4 4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"format" : 6,
					"id" : "obj-41",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 414.0, 241.0, 48.800000727176666, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-43",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 382.0, 241.0, 28.800000429153442, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-44",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 346.0, 241.0, 32.000000476837158, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 302.0, 148.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 346.0, 213.0, 345.0, 23.0 ],
					"text" : "transport",
					"varname" : "transport"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 367.0, 183.0, 210.0, 23.0 ],
					"text" : "metro @interval 1 ticks @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 724.0, 592.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 724.0, 654.0, 47.0, 22.0 ],
					"text" : "s #0_in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 724.0, 624.0, 64.0, 22.0 ],
					"text" : "log-null $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 148.000002205371857, 305.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 136.000002205371857, 553.0, 99.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[2]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[2]"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 136.000002205371857, 520.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[2]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "ValhallaVintageVerb_x64.vst",
							"plugindisplayname" : "ValhallaVintageVerb",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/ValhallaVintageVerb_x64.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "587.CMlaKA....fQPMDZ....AXWYkMC.D.PA....A........................................HvCVMjLgXf....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarElUo4FcgcVYVUlbhABbrU2Yo4lUkI2bo8la8HBMt.iK0HBHvIWYyUFcNEVak0iHDUlYgUGazIBHMkFd8HRLt.iHf.kbkQTYrEVd8HBLtHSMh.BQkMVX40iHv3hM2TCLv.CLwDSNx.SNxjiHfLUZ5UVOhDiKvHBHAQGcgM1Z8HBLtTiHfHTXyMWS0wFc8HBLtXiLy.yL3biM3biM3LSLvTiHfHTXyMGVuYWYx0iHv3xL3DCL1PSN0DCMwjCNy.yLh.BRocFZSgVYrYVOh.iKvHBHHk1YnYjbkEWOh.iK0HBHEElbrkGQoYlY0MWZu4VOhDiKvHBHLEFckQTZlYVcyk1at0iHw3BLh.RSuQlTgQWY8HBLtHCM0PSMzTiMzXSNvTCN4jiHfzzajQTYvQGZ8HBLtLyM4jSN4jSN0HyLwXiL3PiHffTZmg1P0QWOh.iK0jCL0LCN3TSNyXyMybCL1HBHL81cCUGc8HBLt.iHfLzar8lbM8FYk0iHv3xLyLyLyLyLzLiL1bCMz.CNh.hTkYWYxIVSuQVY8HBLt.CMwXiM1XiM2jCL3PyLvDiHfzVZ3wzaisVOh.iHfTWZWkFYzgVOhjyL0HBH0kFRkk1YnQWOhPyL0HxK9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Zebra 2.9.3",
									"origin" : "ValhallaVintageVerb_x64.vst",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "ValhallaVintageVerb_x64.vst",
										"plugindisplayname" : "ValhallaVintageVerb",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/ValhallaVintageVerb_x64.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "587.CMlaKA....fQPMDZ....AXWYkMC.D.PA....A........................................HvCVMjLgXf....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarElUo4FcgcVYVUlbhABbrU2Yo4lUkI2bo8la8HBMt.iK0HBHvIWYyUFcNEVak0iHDUlYgUGazIBHMkFd8HRLt.iHf.kbkQTYrEVd8HBLtHSMh.BQkMVX40iHv3hM2TCLv.CLwDSNx.SNxjiHfLUZ5UVOhDiKvHBHAQGcgM1Z8HBLtTiHfHTXyMWS0wFc8HBLtXiLy.yL3biM3biM3LSLvTiHfHTXyMGVuYWYx0iHv3xL3DCL1PSN0DCMwjCNy.yLh.BRocFZSgVYrYVOh.iKvHBHHk1YnYjbkEWOh.iK0HBHEElbrkGQoYlY0MWZu4VOhDiKvHBHLEFckQTZlYVcyk1at0iHw3BLh.RSuQlTgQWY8HBLtHCM0PSMzTiMzXSNvTCN4jiHfzzajQTYvQGZ8HBLtLyM4jSN4jSN0HyLwXiL3PiHffTZmg1P0QWOh.iK0jCL0LCN3TSNyXyMybCL1HBHL81cCUGc8HBLt.iHfLzar8lbM8FYk0iHv3xLyLyLyLyLzLiL1bCMz.CNh.hTkYWYxIVSuQVY8HBLt.CMwXiM1XiM2jCL3PyLvDiHfzVZ3wzaisVOh.iHfTWZWkFYzgVOhjyL0HBH0kFRkk1YnQWOhPyL0HxK9.."
									}
,
									"fileref" : 									{
										"name" : "Zebra 2.9.3",
										"filename" : "Zebra 2.9.3.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "14123ff4c16b30153a9caa167bba2c88"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ValhallaVintageVerb",
									"origin" : "ValhallaVintageVerb_x64.vst",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "ValhallaVintageVerb",
										"filename" : "ValhallaVintageVerb.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "68d3e3c39599e0fc234fc2708f72da33"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[2]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.000002205371857, 481.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 145.000002205371857, 421.0, 99.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 148.000002205371857, 392.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "ValhallaDelay.vst",
							"plugindisplayname" : "ValhallaDelay",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/ValhallaDelay.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "976.CMlaKA....fQPMDZ....APFSgkG.C.PA....A........................................L.kVMjLgr3....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarEFQkwVX4ABbrU2Yo4lUkI2bo8la8HxLt.iK0HBHvIWYyUFcNEVak0iHDkzQIQUPL0BRgwlYs31azUFHDUFagkmHfzTZ30iHv3RN3XSN4jSN3fSM0TSNvfiLh.BQkwVX4MEc4wVY8HBLt.iHfPTYrEVdLMUdtMVOh.iK0HBHDUFagkGSN8Fck0iHv3BMy.CLv.CLvbSL0HSM0bCMh.BQkwVX4wzWMMWOh.iK0fiM1XiM2.yLxHCMwfiLwHBHDUFagkmTSkmai0iHv3hL0HBHDUFagkmTN8Fck0iHv3hLv.CLv.CLvHSN3.iLyHiLh.BQkwVX4I0WMMWOh.iKy.CLv.CLvDSL4HCL4HSNh.BQkwVX4MEbxUVXj0iHv3RMh.BQkwVX4MEbgMVZtcVOh.iK0HBHDUFagkmTgQWZu0iHv3hMwPSLzDCMvPiMxfyM0LyMh.hTkAWYgQ2T2UFar0iHw3BLh.BUgAWP8HRLt.iHfPUXvITOhDiKvHBHTEFbC0iHw3BLh.BUgAGQ8HRLt.iHfXTYkQlXgM1Z8HBLtHSNw.CLv.CL3TCNy.iM3fiHfbUZjQGZ8HRLt.iHfPjboYWYI4VOh.iKxTiHfDzYk0iHv3RMh.BQoYlY0MWZu4VOh.iKvHBHDklYlMUZ5UVOhDiKvHBHL81cCUGc8HBLt.iHffTZmg1P0QWOh.iKzbiL4jSN4fSN4fiMzDSN2HBHM8FYREFck0iHv3RLvjSN4jSN4jCMvLSN0LiMh.RSuQFQkAGcn0iHv3RMyHCLv.CLvTiLzTiLvfyMh.xUucWOh.iK0HBHFwVczQWYx0iHv3RMh.hQxUVbSgVZlQWOh.iK0HBHFIWYwQTYzUmak0iHv3RM2jSN4jSN3LyLw.iM4jSMh.BToQ2XnMEZoYFc8HBLtTiHf.UZzMFZDUFc04VY8HBLtTiHfzzajUVOh.iKwXiM1XiM1bSL1LyL2HCLzHBHEIWX8HBLtXiM1XiM1XCN1TyLzfCNwXiHfPTcisVZtcVOh.iKvHBHRU1bkImckQlL8HBLt.iHfHUYyUlb1UFYyziHv3BLh.hTkMWYxYWYjQSOh.iKvHBHskFdL81Xq0iHvHBH0k1UoQFcn0iH4PSMh.RcogTYocFZz0iHzLSMh7hO.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Zebra 2.9.3",
									"origin" : "ValhallaDelay.vst",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "ValhallaDelay.vst",
										"plugindisplayname" : "ValhallaDelay",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/ValhallaDelay.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "976.CMlaKA....fQPMDZ....APFSgkG.C.PA....A........................................L.kVMjLgr3....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarEFQkwVX4ABbrU2Yo4lUkI2bo8la8HxLt.iK0HBHvIWYyUFcNEVak0iHDkzQIQUPL0BRgwlYs31azUFHDUFagkmHfzTZ30iHv3RN3XSN4jSN3fSM0TSNvfiLh.BQkwVX4MEc4wVY8HBLt.iHfPTYrEVdLMUdtMVOh.iK0HBHDUFagkGSN8Fck0iHv3BMy.CLv.CLvbSL0HSM0bCMh.BQkwVX4wzWMMWOh.iK0fiM1XiM2.yLxHCMwfiLwHBHDUFagkmTSkmai0iHv3hL0HBHDUFagkmTN8Fck0iHv3hLv.CLv.CLvHSN3.iLyHiLh.BQkwVX4I0WMMWOh.iKy.CLv.CLvDSL4HCL4HSNh.BQkwVX4MEbxUVXj0iHv3RMh.BQkwVX4MEbgMVZtcVOh.iK0HBHDUFagkmTgQWZu0iHv3hMwPSLzDCMvPiMxfyM0LyMh.hTkAWYgQ2T2UFar0iHw3BLh.BUgAWP8HRLt.iHfPUXvITOhDiKvHBHTEFbC0iHw3BLh.BUgAGQ8HRLt.iHfXTYkQlXgM1Z8HBLtHSNw.CLv.CL3TCNy.iM3fiHfbUZjQGZ8HRLt.iHfPjboYWYI4VOh.iKxTiHfDzYk0iHv3RMh.BQoYlY0MWZu4VOh.iKvHBHDklYlMUZ5UVOhDiKvHBHL81cCUGc8HBLt.iHffTZmg1P0QWOh.iKzbiL4jSN4fSN4fiMzDSN2HBHM8FYREFck0iHv3RLvjSN4jSN4jCMvLSN0LiMh.RSuQFQkAGcn0iHv3RMyHCLv.CLvTiLzTiLvfyMh.xUucWOh.iK0HBHFwVczQWYx0iHv3RMh.hQxUVbSgVZlQWOh.iK0HBHFIWYwQTYzUmak0iHv3RM2jSN4jSN3LyLw.iM4jSMh.BToQ2XnMEZoYFc8HBLtTiHf.UZzMFZDUFc04VY8HBLtTiHfzzajUVOh.iKwXiM1XiM1bSL1LyL2HCLzHBHEIWX8HBLtXiM1XiM1XCN1TyLzfCNwXiHfPTcisVZtcVOh.iKvHBHRU1bkImckQlL8HBLt.iHfHUYyUlb1UFYyziHv3BLh.hTkMWYxYWYjQSOh.iKvHBHskFdL81Xq0iHvHBH0k1UoQFcn0iH4PSMh.RcogTYocFZz0iHzLSMh7hO.."
									}
,
									"fileref" : 									{
										"name" : "Zebra 2.9.3",
										"filename" : "Zebra 2.9.3.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "5bbca440ba11e2f536b834772609f136"
									}

								}
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "ValhallaDelay",
									"origin" : "ValhallaDelay.vst",
									"type" : "VST",
									"subtype" : "AudioEffect",
									"embed" : 0,
									"fileref" : 									{
										"name" : "ValhallaDelay",
										"filename" : "ValhallaDelay.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "b14de4143f7d35e9e1a967776e1c8ba1"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 340.5, 38.0, 57.0, 22.0 ],
					"text" : "(s1 'stop)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.0, 38.0, 58.0, 22.0 ],
					"text" : "(s1 'start)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.600002706050873, 38.0, 83.0, 22.0 ],
					"text" : "(s1 'play-step)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 174.0, 62.0, 22.0 ],
					"text" : "60 90 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 28.000002205371857, 575.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"orientation" : 1,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 34.000002205371857, 425.0, 94.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 148.000002205371857, 345.0, 31.0, 22.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 34.000002205371857, 213.0, 77.0, 22.0 ],
					"text" : "unpack 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 34.000002205371857, 305.0, 108.0, 23.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.000002205371857, 274.0, 32.5, 23.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 34.000002205371857, 245.0, 66.0, 23.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 34.000002205371857, 345.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_modmode" : 0,
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Pianoteq 8.vst",
							"plugindisplayname" : "Pianoteq 8",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Pianoteq 8.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "4440.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....fXUZhIWXvg1atUFHV0RSfzTczUFHw............DAGPImUKkB..H.VFQETLDA..n....fLvHSMu.SNuHiLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLKkRlc7U5vrNAJbdPpchU1QFarE1xP...zQFcMo3...PE....VklXxEFbn8lakAhUszDHMUGckARL.....b....PSuQVXxQGcIA...zTczUFYfXWYxMWZu4FHwnCHzgVYfHVXxMGHgIWYfPVXsAWYjAxcoQGZfXVYrQGKfzVXqklamABcnUFHy8VctQFHyg1axQWYx4B.....DE...TA...fUoIlbgAGZu4VYfXUKMARS0QWYfDC.....rK...bjTUUE...fA....AL.vMQkbqA..BXM.+KvCfHDagoGHJUmbpUlcik1X..HF.PnUPxyaBhAf7.vFP1ScAFEf8..DP9yYAZAf+..RPBzIqDjFDITW..XP.z.P.3mP.zAjEEUfk.XQ...jBgEY.JD.m.4PT4WQS0AfCAfaPZzVN.XQ.DXCFAPfX.4PoLFfCA.JPtjWAlAfKA.DPxjXARyRkwAfLAfeKAPCPljVAp.RMAAfIAPeHA.QPZzOiAnQ..AjDUDa.RD.p.4P+.GfCAfJPRzNTAHQ.rAjFcTfZ.nQ.7.jHkDe.hD...IQDEFfDA..PlRMpXjQFAKP+cDfFA..PNTLeAXJ.nBj3ziC.ND.O.IQNMFfDAfTPZzRM.HN.jiQ.7FjHoTfn.HR.z.jJUTfZ.nR.rAjKIUfZ.3R.bCjLsTf0.HS.rAjO4Ufp.3S.z.r.AfTPxTGAB.fLAPCP1zS.fCKZ3yJ.LTHA1Ar.82B.1D.c.IRx7FfHAfCPxzRAlAfLA.GP1zQAt.SBEGfMAvFPtDRZ.HS.bzP.XzR.nBjJkzF.5C.ApAN..gR.7EjI8TfM.XR.bCjHcTf4czVP.HR.DXMGAfaPZjTVAKP.D3L.ZD.M.4IB4fMhrRSXEXMvBze9AXS...jIozF.dB.7kD.q.oQ6bDf1.PQFAfFPJzOA5.fBA..PZjRAdBfFAvQPlzRr0CMcniKM.XR.vBj1jA.MIkfMAXS.XDjIwiX.ZC.M.oPpnBf5.vCIAPQ8.vXBA.ePtTTAhBr.AvIPxjV..3R.rBj1vB.7LhC.wwfG.KP+EHM.BD.3vD.c.oRQ..f7.vTJA..1.PJPlDLM.KP.jCjHEDD.lD.6AYR+..fHAPbPpzRM.XR.DnIJAvCPtDTgAHF.AvI.APJ.AfM.A.N.AfN.A.O.APO.AfO.AvO.A.P.APP.AfP.AvP.A.Q.APQ.AfQ.AvQ.A.R.APR.AfR.AvR.A.S.APS.AvS.Av+u..TxMWUwz...jD...f.....1IC.....N....XUZhIWXvg1atUFHV0RS...........bx8VaZA...D....P.....A....H....fcx.....fC....VklXxEFbn8lakAhUszD...3OF...............................TYz+++++.....................HWdgwFD....B...............++++++FauMWD....A....D....fQ..........P.....A...............A...............A...............A...............A...............A...............A...............A...............A....................L.f...PC.......nFD...mP...1BM..........BN....P...............v.....................C....................L....P.....A....D........3O.....D..........tssM9L.f...XB.......nFD..vnPB........9SfA..................n.C..fBD..fsP.....L.f...T...bBE..........................A..................n.C..fBD.....C.H...l........pAA..tJj..........D3..B..fI.......fZP..fqBI........3OABH.........RS...................B...7C...3OC.H...FV.......pAA...9CV.......bAe8..B..fI.......fZP..fqBI..........AN.f...XB.......nFD..3pPB........9SfB....D....fe....FwVXzABck0FbkIWXsUlazoPPtARYwUWXrABck0FbkIWXsUlazAxcoQGZffVXx01atk1XfLGcxUFcigVZtclNfLWYzQWZtcFHzgVYf71XzElckAxbzIWYzMFZo41YfP2afDCH2kFarABYoMWXhwVYfDFarAxbzIWYzMFZo41YL.......HKD..fzP..fkCA..HOD..n+P..fEDA..uPD..fDQ..PXDA..5QD..lHQ..fkDA..........D.......bODO....EA...XD.....+A........vA....DUlYgUGazA..........B....L.f...XB.......nFD..3pPB.........Pf..........flYl4OA....D....P.....X....L.f...RA........9C........f+L.f...XB.......nFD..3pPB........9SfC.H...l........pAA..tJj........f+D3..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DH...3OC.H...l........pAA..tJj........f+DH...mPC.H...l........pAA..tJj..........DH...3OC.H...z........pAA..vID..fsPC........9ifC.H..fT..........D....v..B..fI.............f+H..........A....9y..B..fI.............f+H........3OAN.f...PD.........fISljO962O+....9CA.........DH...3OAN.f...XB.............3OB.........Pf.....zLyL4C...................vOA....nYlY7y..B..fI.......fZP..fqBI........3OAB...9K...vOC.H...l........vAA..PJj........f+DX.....A....D....fB....S0VXrwFHHEFars....PakQVZ00FZgwFaw....AD...ZP...f+zLyL8C.....OJb87........................n5P.........9S.....F........9C...3OC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9if.....L.f...XB.......nFD..3pPB.........PfA.........P.........+.....z.....MyLy9zLyL6ilYlwOC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9if...f+....9yA....yLyL+zLyL4ilYlwO...f+zLyb9CB..............................................v..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+HX.....A.......vIz..B..PA....P..........j6Ht6y..B..fI.......PkP...CBI........3OAF..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S.............vKD.....N........7SyLybOMyLS9....7y..........L.f...RA...............C.H..fT..........P....f.....H....b....P.....A........9C...3OA....D....P.....A....D........3O.........BD..PqPFA....v..B..HE...............L.f...RA....................L.f...RA...............C....D...............3.....D.............BD...PP.........9C..........................................................L....vA..............fC....P.............nO..........PyLyju...MCoYlY3C...............................................v.....B...............N.....A............f+.....TyLyzO...bAC..........................................................A....D........3O...PAC....v.....C.........P.....E....P....P.....C....nYlY5ilYlwuyLyr+................T.............vBC...KL...rv...vBW...............................T...............................D..........D....D....v.....lYlY+nYlY76LyL6O................E........KL........vBC...KL...rvE...............................E...............................A..........A.........L....viBW+O8nvU+9Qgq8C..PqP..........PA.......PAC...EL...mv...bBC..vIbA..............................PA..............................P..........P..........C....LyLy7KWOJrOtdTX+................T........Tv...PAC..vIL...mv...bBW...............................T...............................D..........D.........v.....35Qw+ziBW8iqGE9O................E........EL...Tv...bBC..vIL...mvE...............................E...............................A....................D....v.....ZlYF+nYlY76LyL6O...jAA...............D.........."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Zebra 2.9.3",
									"origin" : "Pianoteq 8.vst",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "Pianoteq 8.vst",
										"plugindisplayname" : "Pianoteq 8",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Pianoteq 8.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "4440.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....fXUZhIWXvg1atUFHV0RSfzTczUFHw............DAGPImUKkB..H.VFQETLDA..n....fLvHSMu.SNuHiLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLKkRlc7U5vrNAJbdPpchU1QFarE1xP...zQFcMo3...PE....VklXxEFbn8lakAhUszDHMUGckARL.....b....PSuQVXxQGcIA...zTczUFYfXWYxMWZu4FHwnCHzgVYfHVXxMGHgIWYfPVXsAWYjAxcoQGZfXVYrQGKfzVXqklamABcnUFHy8VctQFHyg1axQWYx4B.....DE...TA...fUoIlbgAGZu4VYfXUKMARS0QWYfDC.....rK...bjTUUE...fA....AL.vMQkbqA..BXM.+KvCfHDagoGHJUmbpUlcik1X..HF.PnUPxyaBhAf7.vFP1ScAFEf8..DP9yYAZAf+..RPBzIqDjFDITW..XP.z.P.3mP.zAjEEUfk.XQ...jBgEY.JD.m.4PT4WQS0AfCAfaPZzVN.XQ.DXCFAPfX.4PoLFfCA.JPtjWAlAfKA.DPxjXARyRkwAfLAfeKAPCPljVAp.RMAAfIAPeHA.QPZzOiAnQ..AjDUDa.RD.p.4P+.GfCAfJPRzNTAHQ.rAjFcTfZ.nQ.7.jHkDe.hD...IQDEFfDA..PlRMpXjQFAKP+cDfFA..PNTLeAXJ.nBj3ziC.ND.O.IQNMFfDAfTPZzRM.HN.jiQ.7FjHoTfn.HR.z.jJUTfZ.nR.rAjKIUfZ.3R.bCjLsTf0.HS.rAjO4Ufp.3S.z.r.AfTPxTGAB.fLAPCP1zS.fCKZ3yJ.LTHA1Ar.82B.1D.c.IRx7FfHAfCPxzRAlAfLA.GP1zQAt.SBEGfMAvFPtDRZ.HS.bzP.XzR.nBjJkzF.5C.ApAN..gR.7EjI8TfM.XR.bCjHcTf4czVP.HR.DXMGAfaPZjTVAKP.D3L.ZD.M.4IB4fMhrRSXEXMvBze9AXS...jIozF.dB.7kD.q.oQ6bDf1.PQFAfFPJzOA5.fBA..PZjRAdBfFAvQPlzRr0CMcniKM.XR.vBj1jA.MIkfMAXS.XDjIwiX.ZC.M.oPpnBf5.vCIAPQ8.vXBA.ePtTTAhBr.AvIPxjV..3R.rBj1vB.7LhC.wwfG.KP+EHM.BD.3vD.c.oRQ..f7.vTJA..1.PJPlDLM.KP.jCjHEDD.lD.6AYR+..fHAPbPpzRM.XR.DnIJAvCPtDTgAHF.AvI.APJ.AfM.A.N.AfN.A.O.APO.AfO.AvO.A.P.APP.AfP.AvP.A.Q.APQ.AfQ.AvQ.A.R.APR.AfR.AvR.A.S.APS.AvS.Av+u..TxMWUwz...jD...f.....1IC.....N....XUZhIWXvg1atUFHV0RS...........bx8VaZA...D....P.....A....H....fcx.....fC....VklXxEFbn8lakAhUszD...3OF...............................TYz+++++.....................HWdgwFD....B...............++++++FauMWD....A....D....fQ..........P.....A...............A...............A...............A...............A...............A...............A...............A...............A....................L.f...PC.......nFD...mP...1BM..........BN....P...............v.....................C....................L....P.....A....D........3O.....D..........tssM9L.f...XB.......nFD..vnPB........9SfA..................n.C..fBD..fsP.....L.f...T...bBE..........................A..................n.C..fBD.....C.H...l........pAA..tJj..........D3..B..fI.......fZP..fqBI........3OABH.........RS...................B...7C...3OC.H...FV.......pAA...9CV.......bAe8..B..fI.......fZP..fqBI..........AN.f...XB.......nFD..3pPB........9SfB....D....fe....FwVXzABck0FbkIWXsUlazoPPtARYwUWXrABck0FbkIWXsUlazAxcoQGZffVXx01atk1XfLGcxUFcigVZtclNfLWYzQWZtcFHzgVYf71XzElckAxbzIWYzMFZo41YfP2afDCH2kFarABYoMWXhwVYfDFarAxbzIWYzMFZo41YL.......HKD..fzP..fkCA..HOD..n+P..fEDA..uPD..fDQ..PXDA..5QD..lHQ..fkDA..........D.......bODO....EA...XD.....+A........vA....DUlYgUGazA..........B....L.f...XB.......nFD..3pPB.........Pf..........flYl4OA....D....P.....X....L.f...RA........9C........f+L.f...XB.......nFD..3pPB........9SfC.H...l........pAA..tJj........f+D3..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DH...3OC.H...l........pAA..tJj........f+DH...mPC.H...l........pAA..tJj..........DH...3OC.H...z........pAA..vID..fsPC........9ifC.H..fT..........D....v..B..fI.............f+H..........A....9y..B..fI.............f+H........3OAN.f...PD.........fISljO962O+....9CA.........DH...3OAN.f...XB.............3OB.........Pf.....zLyL4C...................vOA....nYlY7y..B..fI.......fZP..fqBI........3OAB...9K...vOC.H...l........vAA..PJj........f+DX.....A....D....fB....S0VXrwFHHEFars....PakQVZ00FZgwFaw....AD...ZP...f+zLyL8C.....OJb87........................n5P.........9S.....F........9C...3OC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9if.....L.f...XB.......nFD..3pPB.........PfA.........P.........+.....z.....MyLy9zLyL6ilYlwOC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9if...f+....9yA....yLyL+zLyL4ilYlwO...f+zLyb9CB..............................................v..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+HX.....A.......vIz..B..PA....P..........j6Ht6y..B..fI.......PkP...CBI........3OAF..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S.............vKD.....N........7SyLybOMyLS9....7y..........L.f...RA...............C.H..fT..........P....f.....H....b....P.....A........9C...3OA....D....P.....A....D........3O.........BD..PqPFA....v..B..HE...............L.f...RA....................L.f...RA...............C....D...............3.....D.............BD...PP.........9C..........................................................L....vA..............fC....P.............nO..........PyLyju...MCoYlY3C...............................................v.....B...............N.....A............f+.....TyLyzO...bAC..........................................................A....D........3O...PAC....v.....C.........P.....E....P....P.....C....nYlY5ilYlwuyLyr+................T.............vBC...KL...rv...vBW...............................T...............................D..........D....D....v.....lYlY+nYlY76LyL6O................E........KL........vBC...KL...rvE...............................E...............................A..........A.........L....viBW+O8nvU+9Qgq8C..PqP..........PA.......PAC...EL...mv...bBC..vIbA..............................PA..............................P..........P..........C....LyLy7KWOJrOtdTX+................T........Tv...PAC..vIL...mv...bBW...............................T...............................D..........D.........v.....35Qw+ziBW8iqGE9O................E........EL...Tv...bBC..vIL...mvE...............................E...............................A....................D....v.....ZlYF+nYlY76LyL6O...jAA...............D.........."
									}
,
									"fileref" : 									{
										"name" : "Zebra 2.9.3",
										"filename" : "Zebra 2.9.3.maxsnap",
										"filepath" : "~/Documents/Max 9/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "e89b7e72c7fa27e1dcf727d5cae99278"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 9.833333194255829, 38.0, 55.0, 22.0 ],
					"text" : "zl.slice 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.833333194255829, 7.0, 97.0, 22.0 ],
					"text" : "udpreceive 7777"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 38.0, 35.0, 22.0 ],
					"text" : "reset",
					"varname" : "s4m-reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.0, 38.0, 45.0, 22.0 ],
					"text" : "r #0_in"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.400000512599945, 122.0, 195.0, 22.0 ],
					"saved_object_attributes" : 					{
						"heap" : 32,
						"ins" : 1,
						"log-null" : 0,
						"outs" : 1,
						"thread" : 104
					}
,
					"text" : "s4m s4m-markov-1.scm @heap 32"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"order" : 1,
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"order" : 0,
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"order" : 1,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 43.500002205371857, 299.400004029273987, 43.500002205371857, 299.400004029273987 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"midpoints" : [ 612.5, 208.0, 681.5, 208.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 434.5, 177.0, 355.0, 177.0, 355.0, 196.0, 355.5, 196.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 191.100002706050873, 77.600001156330109, 43.900000512599945, 77.600001156330109 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 285.5, 78.400001168251038, 43.900000512599945, 78.400001168251038 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 157.500002205371857, 336.0, 43.500002205371857, 336.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 350.0, 78.200001180171967, 43.900000512599945, 78.200001180171967 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"order" : 1,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"order" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-28", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"midpoints" : [ 580.5, 301.215626001590863, 294.71562758856453, 301.215626001590863, 294.71562758856453, 143.209373259684071, 311.5, 143.209373259684071 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 145.5, 76.0, 43.900000512599945, 76.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 86.5, 75.0, 43.900000512599945, 75.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 132.500002205371857, 334.071879029273987, 43.500002205371857, 334.071879029273987 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 1,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 311.5, 177.999999463558197, 355.5, 177.999999463558197 ],
					"order" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"order" : 1,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"order" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 0,
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-50", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-50", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 1 ],
					"source" : [ "obj-50", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-50", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-50", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 406.100000530481339, 78.0, 43.900000512599945, 78.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 479.5, 77.0, 43.0, 77.0, 43.900000512599945, 119.0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 550.5, 78.0, 43.900000512599945, 78.0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 180.500002205371857, 77.0, 43.900000512599945, 77.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 90.500002205371857, 270.400004029273987, 57.000002205371857, 270.400004029273987 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 43.500002205371857, 269.400004029273987, 43.500002205371857, 269.400004029273987 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 2 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "live.gain~", "live.gain~", 0 ],
			"obj-26" : [ "vst~[1]", "vst~", 0 ],
			"obj-27" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-28" : [ "vst~[2]", "vst~", 0 ],
			"obj-30" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-5" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "ValhallaDelay.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "ValhallaVintageVerb.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "Zebra 2.9.3.maxsnap",
				"bootpath" : "~/Documents/Max 9/Snapshots",
				"patcherrelativepath" : "../../Max 9/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "s4m.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
