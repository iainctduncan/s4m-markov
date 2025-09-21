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
		"rect" : [ 62.0, 100.0, 938.0, 702.0 ],
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
					"id" : "obj-31",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 668.0, 67.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 668.0, 141.0, 47.0, 22.0 ],
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
					"patching_rect" : [ 668.0, 101.0, 64.0, 22.0 ],
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
					"patching_rect" : [ 148.000002205371857, 258.100003838539124, 31.0, 22.0 ],
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
					"patching_rect" : [ 191.20000284910202, 495.200007379055023, 99.0, 47.0 ],
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
					"patching_rect" : [ 191.20000284910202, 455.200006783008575, 92.5, 22.0 ],
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
					"patching_rect" : [ 312.800004661083221, 407.400005698204041, 31.0, 22.0 ],
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
					"patching_rect" : [ 144.750002205371857, 374.0, 99.0, 47.0 ],
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
					"patching_rect" : [ 148.000002205371857, 344.80000513792038, 92.5, 22.0 ],
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
							"blob" : "914.CMlaKA....fQPMDZ....APFSgkG.C.PA....A........................................LfUVMjLgzz....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarEFQkwVX4ABbrU2Yo4lUkI2bo8la8HxLt.iK0HBHvIWYyUFcNEVak0iHDUlYgUGazIBHMkFd8HRLt.iHfPTYrEVdSQWdrUVOh.iKvHBHDUFagkGSSkmai0iHv3hL0HBHDUFagkGSN8Fck0iHv3hLv.CLv.CLvHSN3.iLyHiLh.BQkwVX4wzWMMWOh.iKy.CLv.CLvDSL4HCL4HSNh.BQkwVX4I0T441X8HBLtHSMh.BQkwVX4IkSuQWY8HBLtHCLv.CLv.CLxjCNvHyLxHiHfPTYrEVdR8USy0iHv3xLv.CLv.CLwDSNx.SNxjiHfPTYrEVdSAmbkEFY8HBLtTiHfPTYrEVdSAWXiklam0iHv3RMh.BQkwVX4IUXzk1a8HBLtXSLzDCMwPCLzXiL3bSMybiHfHUYvUVXzM0ckwFa8HRLt.iHfPUXvETOhDiKvHBHTEFbB0iHw3BLh.BUgA2P8HRLt.iHfPUXvQTOhDiKvHBHFUVYjIVXisVOh.iKzDCN4jSN4jSN2XSL0fSLzHBHWkFYzgVOhDiKvHBHDIWZ1UVRt0iHv3BLh.RPmUVOh.iK0HBHDklYlU2bo8la8HBLt.iHfPTZlY1TooWY8HRLt.iHfvza2MTcz0iHv3BLh.BRocFZCUGc8HRLt.iHfzzajIUXzUVOh.iKxbyL3LCMw.SNy.iMyLSMzHBHM8FYDUFbzgVOh.iK0HBHW81c8HBLtTiHfXDa0QGckIWOh.iK0HBHFIWYwMEZoYFc8HBLtTiHfXjbkEGQkQWctUVOh.iK0bSN4jSN4fyLyDCL1jSN0HBHPkFcig1TnklYz0iHv3RMh.BToQ2XnQTYzUmak0iHv3RMh.RSuQVY8HBLt.CMwXiM1XiM2jCL3PyLvDiHfTjbg0iHv3xLyLyLyLyLzLiL1bCMz.CNh.BQ0M1Zo41Y8HBLt.iHfHUYyUlb1UFYxziHv3BLh.hTkMWYxYWYjMSOh.iKvHBHRU1bkImckQFM8HBLt.iHfzVZ3wzaisVOh.iHfTWZWkFYzgVOhjCM0HBH0kFRkk1YnQWOhPyL0HxK9.."
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
										"blob" : "914.CMlaKA....fQPMDZ....APFSgkG.C.PA....A........................................LfUVMjLgzz....O+fWarAhckI2bo8la8HRLt.iHfTlai8FYo41Y8HRUTYTK3HxO9.BOVEFanEFarEFQkwVX4ABbrU2Yo4lUkI2bo8la8HxLt.iK0HBHvIWYyUFcNEVak0iHDUlYgUGazIBHMkFd8HRLt.iHfPTYrEVdSQWdrUVOh.iKvHBHDUFagkGSSkmai0iHv3hL0HBHDUFagkGSN8Fck0iHv3hLv.CLv.CLvHSN3.iLyHiLh.BQkwVX4wzWMMWOh.iKy.CLv.CLvDSL4HCL4HSNh.BQkwVX4I0T441X8HBLtHSMh.BQkwVX4IkSuQWY8HBLtHCLv.CLv.CLxjCNvHyLxHiHfPTYrEVdR8USy0iHv3xLv.CLv.CLwDSNx.SNxjiHfPTYrEVdSAmbkEFY8HBLtTiHfPTYrEVdSAWXiklam0iHv3RMh.BQkwVX4IUXzk1a8HBLtXSLzDCMwPCLzXiL3bSMybiHfHUYvUVXzM0ckwFa8HRLt.iHfPUXvETOhDiKvHBHTEFbB0iHw3BLh.BUgA2P8HRLt.iHfPUXvQTOhDiKvHBHFUVYjIVXisVOh.iKzDCN4jSN4jSN2XSL0fSLzHBHWkFYzgVOhDiKvHBHDIWZ1UVRt0iHv3BLh.RPmUVOh.iK0HBHDklYlU2bo8la8HBLt.iHfPTZlY1TooWY8HRLt.iHfvza2MTcz0iHv3BLh.BRocFZCUGc8HRLt.iHfzzajIUXzUVOh.iKxbyL3LCMw.SNy.iMyLSMzHBHM8FYDUFbzgVOh.iK0HBHW81c8HBLtTiHfXDa0QGckIWOh.iK0HBHFIWYwMEZoYFc8HBLtTiHfXjbkEGQkQWctUVOh.iK0bSN4jSN4fyLyDCL1jSN0HBHPkFcig1TnklYz0iHv3RMh.BToQ2XnQTYzUmak0iHv3RMh.RSuQVY8HBLt.CMwXiM1XiM2jCL3PyLvDiHfTjbg0iHv3xLyLyLyLyLzLiL1bCMz.CNh.BQ0M1Zo41Y8HBLt.iHfHUYyUlb1UFYxziHv3BLh.hTkMWYxYWYjMSOh.iKvHBHRU1bkImckQFM8HBLt.iHfzVZ3wzaisVOh.iHfTWZWkFYzgVOhjCM0HBH0kFRkk1YnQWOhPyL0HxK9.."
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
					"patching_rect" : [ 328.000004887580872, 38.0, 51.0, 22.0 ],
					"text" : "(s 'stop)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.400003969669342, 38.0, 51.0, 22.0 ],
					"text" : "(s 'start)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.600002706050873, 38.0, 77.0, 22.0 ],
					"text" : "(s 'play-step)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 295.0, 122.0, 55.0, 22.0 ],
					"text" : "print out:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.600002706050873, 146.0, 62.0, 22.0 ],
					"text" : "60 90 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 28.150000512599945, 528.00000786781311, 45.0, 45.0 ]
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
					"patching_rect" : [ 34.400000512599945, 378.400005638599396, 94.0, 47.0 ],
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
					"patching_rect" : [ 148.000002205371857, 297.600004434585571, 31.0, 22.0 ],
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
					"patching_rect" : [ 34.400000512599945, 166.400002479553223, 77.0, 22.0 ],
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
					"patching_rect" : [ 34.400000512599945, 257.600003838539124, 108.0, 23.0 ],
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
					"patching_rect" : [ 34.400000512599945, 227.200003385543823, 32.5, 23.0 ],
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
					"patching_rect" : [ 34.400000512599945, 197.600002944469452, 66.0, 23.0 ],
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
					"patching_rect" : [ 34.400000512599945, 297.600004434585571, 92.5, 22.0 ],
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
							"blob" : "6860.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....fzzRIkDHSUGbkIGHBElbqA...................nAjPImUKkB..H.VFQET.pA..n....fLvHSMu.SNuHCLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLHy8iKi172x8soGod0FY9JPFarE1OZ...zQFcMA7A..vC....MsTRIAxT0AWYxAhPgI2Z.....b....PSuQVXxQGcLA....kbkMWYzAxcoQGZfDFHyQmbu41YfHVXxsFHs.hauQWYfPGZkAxXnElamUFHo4FHvk1XqUGbfLWds0VYzIWdfDlajABYoMGcg41Xk4B.....DE...7....PSKkTRfLUcvUlbfHTXxsF.....qb...bjTUUE...fA....AL.vMQkbqA..GTA.+K.HMsTRIAxT0AWYxAhXgI2ZfzBHPkVYzABQkAhToQFYkI2f9AYMoLnJ.VS.B.YMePgOtnfNy3fHsDn.vBzJP.zVN.zdP.zeCxGf0XwfNoSId.YMrDHP.VCa53iYCxBjoPSft.nHqDnAoHTfL.oKvHnO.5hTBhEjAoDA7nTfd.HOiIFj93ygD3ROApDfAU.KvBTON.zBP.D.L.nOoQjKU4Cj7nCG+biJm.yffAKPM3.PBAAPqAAP+QnF.xCLN.oNlXEf+LVf.nCaDJBjtjRfLAnKuEHOPpyOJbiPTLCPARAfm.CgJ.4ICMHMoXDL.dxaCRkNWfvLaPSJcEnF2zjCPdhNB5Br.0iC.s.D.A.V.dxVp.YM5.fN1XgH+PHCvBDHP.zTN.jcP.zeDhBjxzBgrAnLx.PMiQhNxvCjo3if1AXJEoAj0zjA5nDg.AnNoIRMuIEr.0iC.s..PpSPDHyPFjSQF.KP.HHM.8hC.wED.0GD.8GXPZhN5AnHmDHLlD..PZxG9AnLGEnY4bDM5z.LPVSKXLiJxA3LiQUMiEHKvBTON.zBP.D.9.4M8nfN4P.flfEAPdxODJGr.0BD.wED.0mC.82f3AoKnLnD.5ROhniExbiPA5FjaTifxoCKVLyOAB.fa.Vf.bBMBBEr.8CD.s.D.AfJP1QQApGr.4fC.QDD.0FD.8WfR.oKJIHV.1wGBxfKGEnDPlhQL.3LiEHU5PSfD.KP+3.PK.AP.HEj5zCAxLDIh7CZ.lRZCBGr.IiC.AFD.82fzAoKq.Dfx7DVtLVfToyXChAjoHzfTbSSB3yREBBf2vlMoPfCPpCPChwM9THE.dSWJoCPV.YJBAPMBQ.fhD..PJRHB5.r.0CD.sfC.AfH.5CXZTCXvjRQH.oM5.AOxfwI3HCfhTRfH.4Mx3.f171f7.KPI3.P+.APoAAP+MHMPNiLDBAf2.hByziT7fEUP5xPBRmNJQvMKQnY.dSZ.nCaPAIOKQvLKIyMufEf2TWfh3BMxA4JEgGfyvlAmjlM7v1fZsBaJAoKBEna.5RZt.KPJ4.PQ.AP.nDjzHjA8HjBhLTfRAHMrAGj03hQ9PCK.1iPAJFr.4AD.EED.UmC.8mfF.XMXEnM9P..P5SJnTyMAJCf0XVfV3yXBJEjojifZ.XJloEr.8CD.sfC.AfBP5RQHDjSLvSSB5lOEYAf7vVfxAKPH.AP8.APn4.P+MHUPpyPX.nHlEnQtfUf94CVpnCXbEzalAoN5vfKEEHPvBTON.zBP.D.5.nKf4FjmHDBFEDEBITfXLzMBhEr.8hC.wED.0mB.JjAF.KP+EnC.ZDV7nyQnMzXT.YQ4PRP7HHJ.FjYAp.r.0iD.sfC.AvfpA4PBI.fEYlCP9SPAhGr.Y.C.wiD.YFD.8mLP5xNBBAftfkJmrEgB.oNJMHOyTDgp.3OfEHIPlBRAJAfy.lYvBTPP.TCL.D.FA3PlQGjtnD.AADA97iT.lhRznSWDZGr.0BD.wkC.0GD.8mfLAoN5nEf9fCgp.oHH4.fAw..5rCcvBjPN.jCP.D.AhEj7rjBAgjfJAHOagCj9jiF+bCT.9yaARfOowBj73ifPAXPRADOrwFjAMjA5fDP73BTvBjFL.HOxI.r.wDD.EGD.8mft.XPiYiHr4iKtffNloBjoDjfZAKP83.PK.AP.nBj5HDA+DjAmbDX.lBaAJCj7LiF.pCaEZwOgXEOJY.r.g.D.0iC.gFD.8GMPpiON7yJpviIxAHOrMHd5zEG+XCSPdCNA5Df2LVfdAoK7DnU.dRWBBlKJEn.PdxQAZAr.0CD.s.D.A.A.dxaAJDj0PEB5zTf.AKPP.APFAAPt4.P+IHI.VCaJnSSnAoNnvvMCIxIEoGf27VflbRQb.KP+.APK.AP.nCjw.DAzjiIh7Cg.AXLuw.MugjNE..j5LBAxjCA0XyfZjxNApGr.k.D.0iC.gFD.82f7.oKEYCfxL..PJyGlAnLlIHFo7jAPZBPCh.f0XVf3YRZ.AYJAEHO.pCAX3R.ARBr.EED.UgC.AfA.lxQR.oKBIQNFIfNAQAL6XDfvTmfz3xQfAKPk.APVAAP3o.f5Hf.PpyGB.KP+EHBPZhMzAnHEEnPvBTOP.zBN.D.h.XNrAfNjvEj2nCI5XBDm.jD.ZBXEp.r.YgC.oDD.EGD.82fV.oKyLHW.dySX3BJhnyFfbxNtA4IjXvFEEnI.dxaRrwaAxBjcfDgFAKP8.APK.AP.DHGPNSTFnSSAhEfc.VfLAYJFYfKKAFfyjFQvBDBP.TOP.DZN.zeAJGfoHUfv3BVVAYLEYPJ.EHBvBTON.zBP.D.AZAf5jlJw7FQPJCPPnSMTHRPAhAfojlfPAKPn3.PWAAP5AAP+QHT.JSWR.oK2DHO.5BaAphNlIoZhzD.++B.PI2bU8lD..PR....D....z1ZokF.....R....XUZtQWXmUFHTklakMGHMsTRIA..........vI2asAF...P.....A....D.....A....ssVZoA....fD....VklazE1YkABUo4VYyARSKkTR...f+X...............................PkQ+++++C....................fb4EFaP....H...............7+++++ar81bQ....D....P.....FA..........A....D...............D...............D...............D...............D...............D...............D...............D...............D...................A7..B..fgE......fZP...f+fE....HlElOWATpU2C.rU4N.Ucr8.LKJ4CfOwXO.vns8BPKq4KHcEsufFzr9Bbrv2KX+rfu.kL19BPA36KPfafu.59D9.L2d3C.IVnO.hMv9.5UP3C.tbfu.Psp8BXk91C.AuiO.nYC9.fZXwC.H2Mu.fKB6BHb72KPxbou.fsU9BfxfzCPJkfO.fh76.v7a3K.JVgu.f1I7B.482CfU7eO.Igm8.voU2C.i6Ku.ICh9BDx14KfU4Vu.HBE8.rnv3CDHFnO.+fa9.ZTb5CXTrrO.0bx9.sfD6C.E0nOf9EA9..FBwC.nnNOfrRQ9.NHa5Cv3QlO.ZjP9..BH6C3xJwOH4GJ+.jW17CZud0OnXqX+.vGQ8CZw+yOHX+Y+fWJg9CZN65O.sfl+.74i9Cs.h7OnPf3+.b92+C.Hy+O.S8++fvhJ.DmzaAPfUhK.AzlCADwuDEPTQ5V.4TKrATevHHPQ2ji.M....P...............v.....................C....................L....P.....A....D........3O.....D..........MyLy8L.f...XB.......nFD..vnPB........9SfA..................n.C..fBD..fsP.....L.f...T...bBE..........................A..................n.C..fBD.....C.H...l........pAA..tJj..........D3..B..fI.......fZP..fqBI........3OABH.........RS...................B...7SyLybOC.H...E...mPA.........v..B..fgE......fZP...f+fE...fnly+uWc.HN9KlwVJvWebb.KD.i.jDhu7Oha2t.UO4p8S0d3xOoNpr.AsfMAjtx7FP6LG..aamUBL177HPU3NY.sWLkBT2l0KPholZ.MDl55KenyzOw+qG.y0609yQbwGv5h+i.GfYCAz8ADFP6Sbm.Iu1mBz77VDvifUp.IUxe6qpze8O9cPb.GmZuBz1jhIPxY5H.8KFDBD+gl7OcZGz+hVLi7yr7DHPB9Wv+7WfpBTGLeBP8D5h.2UUQ2KKTRGPoE2n.uKxWzai+HwOmHNi+Z78cA7NqdIPVJkm.ObQm+KWXBnu3CBo9h2xrBTTcNKv1x0C.6cFq9q9BvKv97Pt.uEhZBTEwg9uvnaj.WdURBLiS9GPJ1wu+vTgl.LAxwHPngWo8brZjAzRKOvuZBBz+P26cBTYuSEvFXnQ+tKfX.reKHKP9Zck.4LA+A79EHFvP0UC.WZTB8SySQBv+UmU.O.f...XB.......nFD..3pPB........9SfB....D....fe....FwVXzABck0FbkIWXsUlazoPPtARYwUWXrABck0FbkIWXsUlazAxcoQGZffVXx01atk1XfLGcxUFcigVZtclNfLWYzQWZtcFHzgVYf71XzElckAxbzIWYzMFZo41YfP2afDCH2kFarABYoMWXhwVYfDFarAxbzIWYzMFZo41YL.......HKD..fzP..fkCA..HOD..n+P..fEDA..uPD..fDQ..PXDA..5QD..lHQ..fkDA..........D.......bODO....EA...XD.....+A........vA....DUlYgUGazA..........B....L.f...XB.......nFD..3pPB.........Pf..........fd1L4OA....D....P.....X....L.f...RA........9C........f+L.f...XB.......nFD..3pPB........9SfC.H...FV.......pAA...9CV.........b8..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HXyLyjOC.H...FV.......pAA...9CV....mYl4+7nW4U9OYnq7p+SrEn9OM726+Lfjt+yWKP+OW4w7+X6k3+Sqpd+OHPR++7uM7+SKXC.PdS4..gkGC.zAaW.PARVA.0e6D.zppd.PYclB.UM7I.zfsx.P9aCC.sGvK.DJ84.PazZB.UjiG.TQNd.PAt43..j.vUU++r43..zliC.PGDVUE.DC.v.PJ..H.g43n.DzwgCP5wwO.QxwEADIGWDPPnNNJAjrp5DPcUUU.gNNxADywQGP733e.A43.BT43PHP...h.oYlIBzLyrHPMyLi.YlYNBD...IPZlYj.MyLSBzLyLIPA1LyTBj.lYlk.A..XBD..fIPElYlYBjfyLyl.EH...vOC.H...FV.......pAA...9CV....tHtc+bktDJ2ONdMc+.Ff38ixQe2O9ejc+vegy8iDDN2O.Anc+Xwq58i+2v2OJHyd+XRG68CPt72OALIf+jMfA9yeLM3OuPZg+vx3F9STBQ3ORvTf+Hq+C9CYYn3OTJVi+zYIN9yfuA4OnMnj+3BOR9CCoH4O8iwj+bq6T9y4hY4Od.tk+PuUZ9Ca834Ot1Gn+Dilg9iiZP5OI5ro+T0Nm9Sr+a5OhvEp+fplo9Seti5OVUzo+3c2j9yelF5O...n+bqOa9iwNm4OoTQl+TgpX9yk0b4Ok.Nk+fCbR9C1PF4OdiSj+3y.Q9iPI+3OIeQi+Xd4J9ieDl3OR8Kh+DCtH9CeXf3O.Fig+P+.F9iCmW3OeCYg+DnYD9CnCE3ONe9e+DNhA9iq7G3O0Snf+7d0D9in1c3Ow6Dh+T3IE9SARF3OtAUf+PqlC9C+2S3OPyOg+HsyE9yace3OWpFh+.SMF9C...hPC.H...DB.......DBA...ID...mP...jBA..nJD..PqP...vBA..HKDB.........HH...3OD....AD...LP...PAA..vED...vOC.H...z........pAA..vID..fsPC........9ifC.H..fT..........D....v..B..fI.............f+H..........A....9y..B..fI.............f+H........3OAN.f...PD.........fISljO962O+....9CA.........DH...3OAN.f...XB.............3OB.........Pf.....zLyL4C...................vO.........9y..B..fI.......fZP..fqBI........3OAB...9K...vOC.H...l........vAA..PJj........f+DX..........D....vB....JEld5AxbzUGYo8lB....pEld5MGc0QVZuA..fBD...YP...f+LyLy7C..........................zLyL6K..n5PUJHf4....9S.....F....fhMJ0C...3OC.H...FV.......pAA...9CV....w+do7b8..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DX..........D........vO.....M........3O...f+....9y..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+HH...3O...f+b........3OMyLS+...f9C...9O...f9f...............................................L.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBF....P........bBM.f...T.....D..............9L.f...XB.......nFD..3pPB........9SfA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D.............7BA....fC........+zLyL2SyLyjO....+L..........C.H..fT...............v..B..HE..........D....H....v.....D....D....P........f+....9S.....A....D....P.....A........9C........f.A..zJjQ.....L.f...RA...............C.H..fT.....................C.H..fT...............v.....A...............N.....A..............A....D.........+...........................................................C....L...............3.....D.........vdT35yv0ipOZlYl9nYlY5C..........................................................L....fB..............fC....P............frP.........9C....P..3NEA...CTyLyjO...f+..f6XD........f+....AD...............P.....A....L66x7C...Qv.....L....v..........D....PA....D....D....v.....7nv09XOJb8C...3O...MCC..........E.............ev...vBC...KL...rvE...............................E...............................A....D.....A....A....L....vDtd3O1iBW+....9C..Pyv..........PA.......7AC........rv...vBC...KbA..............................PA..............................P.....A....P..........C....7nv0+SOJb0ueT3Z+...zJD..........T........Tv...PAC..vIL...mv...bBW...............................T...............................D..........D.........v.....yLyL+x0iB6iqGE1O................E........EL...Tv...bBC..vIL...mvE...............................E...............................A..........A.........L.....tdT7O8nvU+35Qg+C...............PA.......PAC...EL...mv...bBC..vIbA..............................PA..............................P..........D....P.....A....L....fT35wO...f+....9C...bP........vGD.....A.........."
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
										"blob" : "6860.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....fzzRIkDHSUGbkIGHBElbqA...................nAjPImUKkB..H.VFQET.pA..n....fLvHSMu.SNuHCLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLHy8iKi172x8soGod0FY9JPFarE1OZ...zQFcMA7A..vC....MsTRIAxT0AWYxAhPgI2Z.....b....PSuQVXxQGcLA....kbkMWYzAxcoQGZfDFHyQmbu41YfHVXxsFHs.hauQWYfPGZkAxXnElamUFHo4FHvk1XqUGbfLWds0VYzIWdfDlajABYoMGcg41Xk4B.....DE...7....PSKkTRfLUcvUlbfHTXxsF.....qb...bjTUUE...fA....AL.vMQkbqA..GTA.+K.HMsTRIAxT0AWYxAhXgI2ZfzBHPkVYzABQkAhToQFYkI2f9AYMoLnJ.VS.B.YMePgOtnfNy3fHsDn.vBzJP.zVN.zdP.zeCxGf0XwfNoSId.YMrDHP.VCa53iYCxBjoPSft.nHqDnAoHTfL.oKvHnO.5hTBhEjAoDA7nTfd.HOiIFj93ygD3ROApDfAU.KvBTON.zBP.D.L.nOoQjKU4Cj7nCG+biJm.yffAKPM3.PBAAPqAAP+QnF.xCLN.oNlXEf+LVf.nCaDJBjtjRfLAnKuEHOPpyOJbiPTLCPARAfm.CgJ.4ICMHMoXDL.dxaCRkNWfvLaPSJcEnF2zjCPdhNB5Br.0iC.s.D.A.V.dxVp.YM5.fN1XgH+PHCvBDHP.zTN.jcP.zeDhBjxzBgrAnLx.PMiQhNxvCjo3if1AXJEoAj0zjA5nDg.AnNoIRMuIEr.0iC.s..PpSPDHyPFjSQF.KP.HHM.8hC.wED.0GD.8GXPZhN5AnHmDHLlD..PZxG9AnLGEnY4bDM5z.LPVSKXLiJxA3LiQUMiEHKvBTON.zBP.D.9.4M8nfN4P.flfEAPdxODJGr.0BD.wED.0mC.82f3AoKnLnD.5ROhniExbiPA5FjaTifxoCKVLyOAB.fa.Vf.bBMBBEr.8CD.s.D.AfJP1QQApGr.4fC.QDD.0FD.8WfR.oKJIHV.1wGBxfKGEnDPlhQL.3LiEHU5PSfD.KP+3.PK.AP.HEj5zCAxLDIh7CZ.lRZCBGr.IiC.AFD.82fzAoKq.Dfx7DVtLVfToyXChAjoHzfTbSSB3yREBBf2vlMoPfCPpCPChwM9THE.dSWJoCPV.YJBAPMBQ.fhD..PJRHB5.r.0CD.sfC.AfH.5CXZTCXvjRQH.oM5.AOxfwI3HCfhTRfH.4Mx3.f171f7.KPI3.P+.APoAAP+MHMPNiLDBAf2.hByziT7fEUP5xPBRmNJQvMKQnY.dSZ.nCaPAIOKQvLKIyMufEf2TWfh3BMxA4JEgGfyvlAmjlM7v1fZsBaJAoKBEna.5RZt.KPJ4.PQ.AP.nDjzHjA8HjBhLTfRAHMrAGj03hQ9PCK.1iPAJFr.4AD.EED.UmC.8mfF.XMXEnM9P..P5SJnTyMAJCf0XVfV3yXBJEjojifZ.XJloEr.8CD.sfC.AfBP5RQHDjSLvSSB5lOEYAf7vVfxAKPH.AP8.APn4.P+MHUPpyPX.nHlEnQtfUf94CVpnCXbEzalAoN5vfKEEHPvBTON.zBP.D.5.nKf4FjmHDBFEDEBITfXLzMBhEr.8hC.wED.0mB.JjAF.KP+EnC.ZDV7nyQnMzXT.YQ4PRP7HHJ.FjYAp.r.0iD.sfC.AvfpA4PBI.fEYlCP9SPAhGr.Y.C.wiD.YFD.8mLP5xNBBAftfkJmrEgB.oNJMHOyTDgp.3OfEHIPlBRAJAfy.lYvBTPP.TCL.D.FA3PlQGjtnD.AADA97iT.lhRznSWDZGr.0BD.wkC.0GD.8mfLAoN5nEf9fCgp.oHH4.fAw..5rCcvBjPN.jCP.D.AhEj7rjBAgjfJAHOagCj9jiF+bCT.9yaARfOowBj73ifPAXPRADOrwFjAMjA5fDP73BTvBjFL.HOxI.r.wDD.EGD.8mft.XPiYiHr4iKtffNloBjoDjfZAKP83.PK.AP.nBj5HDA+DjAmbDX.lBaAJCj7LiF.pCaEZwOgXEOJY.r.g.D.0iC.gFD.8GMPpiON7yJpviIxAHOrMHd5zEG+XCSPdCNA5Df2LVfdAoK7DnU.dRWBBlKJEn.PdxQAZAr.0CD.s.D.A.A.dxaAJDj0PEB5zTf.AKPP.APFAAPt4.P+IHI.VCaJnSSnAoNnvvMCIxIEoGf27VflbRQb.KP+.APK.AP.nCjw.DAzjiIh7Cg.AXLuw.MugjNE..j5LBAxjCA0XyfZjxNApGr.k.D.0iC.gFD.82f7.oKEYCfxL..PJyGlAnLlIHFo7jAPZBPCh.f0XVf3YRZ.AYJAEHO.pCAX3R.ARBr.EED.UgC.AfA.lxQR.oKBIQNFIfNAQAL6XDfvTmfz3xQfAKPk.APVAAP3o.f5Hf.PpyGB.KP+EHBPZhMzAnHEEnPvBTOP.zBN.D.h.XNrAfNjvEj2nCI5XBDm.jD.ZBXEp.r.YgC.oDD.EGD.82fV.oKyLHW.dySX3BJhnyFfbxNtA4IjXvFEEnI.dxaRrwaAxBjcfDgFAKP8.APK.AP.DHGPNSTFnSSAhEfc.VfLAYJFYfKKAFfyjFQvBDBP.TOP.DZN.zeAJGfoHUfv3BVVAYLEYPJ.EHBvBTON.zBP.D.AZAf5jlJw7FQPJCPPnSMTHRPAhAfojlfPAKPn3.PWAAP5AAP+QHT.JSWR.oK2DHO.5BaAphNlIoZhzD.++B.PI2bU8lD..PR....D....z1ZokF.....R....XUZtQWXmUFHTklakMGHMsTRIA..........vI2asAF...P.....A....D.....A....ssVZoA....fD....VklazE1YkABUo4VYyARSKkTR...f+X...............................PkQ+++++C....................fb4EFaP....H...............7+++++ar81bQ....D....P.....FA..........A....D...............D...............D...............D...............D...............D...............D...............D...............D...................A7..B..fgE......fZP...f+fE....HlElOWATpU2C.rU4N.Ucr8.LKJ4CfOwXO.vns8BPKq4KHcEsufFzr9Bbrv2KX+rfu.kL19BPA36KPfafu.59D9.L2d3C.IVnO.hMv9.5UP3C.tbfu.Psp8BXk91C.AuiO.nYC9.fZXwC.H2Mu.fKB6BHb72KPxbou.fsU9BfxfzCPJkfO.fh76.v7a3K.JVgu.f1I7B.482CfU7eO.Igm8.voU2C.i6Ku.ICh9BDx14KfU4Vu.HBE8.rnv3CDHFnO.+fa9.ZTb5CXTrrO.0bx9.sfD6C.E0nOf9EA9..FBwC.nnNOfrRQ9.NHa5Cv3QlO.ZjP9..BH6C3xJwOH4GJ+.jW17CZud0OnXqX+.vGQ8CZw+yOHX+Y+fWJg9CZN65O.sfl+.74i9Cs.h7OnPf3+.b92+C.Hy+O.S8++fvhJ.DmzaAPfUhK.AzlCADwuDEPTQ5V.4TKrATevHHPQ2ji.M....P...............v.....................C....................L....P.....A....D........3O.....D..........MyLy8L.f...XB.......nFD..vnPB........9SfA..................n.C..fBD..fsP.....L.f...T...bBE..........................A..................n.C..fBD.....C.H...l........pAA..tJj..........D3..B..fI.......fZP..fqBI........3OABH.........RS...................B...7SyLybOC.H...E...mPA.........v..B..fgE......fZP...f+fE...fnly+uWc.HN9KlwVJvWebb.KD.i.jDhu7Oha2t.UO4p8S0d3xOoNpr.AsfMAjtx7FP6LG..aamUBL177HPU3NY.sWLkBT2l0KPholZ.MDl55KenyzOw+qG.y0609yQbwGv5h+i.GfYCAz8ADFP6Sbm.Iu1mBz77VDvifUp.IUxe6qpze8O9cPb.GmZuBz1jhIPxY5H.8KFDBD+gl7OcZGz+hVLi7yr7DHPB9Wv+7WfpBTGLeBP8D5h.2UUQ2KKTRGPoE2n.uKxWzai+HwOmHNi+Z78cA7NqdIPVJkm.ObQm+KWXBnu3CBo9h2xrBTTcNKv1x0C.6cFq9q9BvKv97Pt.uEhZBTEwg9uvnaj.WdURBLiS9GPJ1wu+vTgl.LAxwHPngWo8brZjAzRKOvuZBBz+P26cBTYuSEvFXnQ+tKfX.reKHKP9Zck.4LA+A79EHFvP0UC.WZTB8SySQBv+UmU.O.f...XB.......nFD..3pPB........9SfB....D....fe....FwVXzABck0FbkIWXsUlazoPPtARYwUWXrABck0FbkIWXsUlazAxcoQGZffVXx01atk1XfLGcxUFcigVZtclNfLWYzQWZtcFHzgVYf71XzElckAxbzIWYzMFZo41YfP2afDCH2kFarABYoMWXhwVYfDFarAxbzIWYzMFZo41YL.......HKD..fzP..fkCA..HOD..n+P..fEDA..uPD..fDQ..PXDA..5QD..lHQ..fkDA..........D.......bODO....EA...XD.....+A........vA....DUlYgUGazA..........B....L.f...XB.......nFD..3pPB.........Pf..........fd1L4OA....D....P.....X....L.f...RA........9C........f+L.f...XB.......nFD..3pPB........9SfC.H...FV.......pAA...9CV.........b8..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HXyLyjOC.H...FV.......pAA...9CV....mYl4+7nW4U9OYnq7p+SrEn9OM726+Lfjt+yWKP+OW4w7+X6k3+Sqpd+OHPR++7uM7+SKXC.PdS4..gkGC.zAaW.PARVA.0e6D.zppd.PYclB.UM7I.zfsx.P9aCC.sGvK.DJ84.PazZB.UjiG.TQNd.PAt43..j.vUU++r43..zliC.PGDVUE.DC.v.PJ..H.g43n.DzwgCP5wwO.QxwEADIGWDPPnNNJAjrp5DPcUUU.gNNxADywQGP733e.A43.BT43PHP...h.oYlIBzLyrHPMyLi.YlYNBD...IPZlYj.MyLSBzLyLIPA1LyTBj.lYlk.A..XBD..fIPElYlYBjfyLyl.EH...vOC.H...FV.......pAA...9CV....tHtc+bktDJ2ONdMc+.Ff38ixQe2O9ejc+vegy8iDDN2O.Anc+Xwq58i+2v2OJHyd+XRG68CPt72OALIf+jMfA9yeLM3OuPZg+vx3F9STBQ3ORvTf+Hq+C9CYYn3OTJVi+zYIN9yfuA4OnMnj+3BOR9CCoH4O8iwj+bq6T9y4hY4Od.tk+PuUZ9Ca834Ot1Gn+Dilg9iiZP5OI5ro+T0Nm9Sr+a5OhvEp+fplo9Seti5OVUzo+3c2j9yelF5O...n+bqOa9iwNm4OoTQl+TgpX9yk0b4Ok.Nk+fCbR9C1PF4OdiSj+3y.Q9iPI+3OIeQi+Xd4J9ieDl3OR8Kh+DCtH9CeXf3O.Fig+P+.F9iCmW3OeCYg+DnYD9CnCE3ONe9e+DNhA9iq7G3O0Snf+7d0D9in1c3Ow6Dh+T3IE9SARF3OtAUf+PqlC9C+2S3OPyOg+HsyE9yace3OWpFh+.SMF9C...hPC.H...DB.......DBA...ID...mP...jBA..nJD..PqP...vBA..HKDB.........HH...3OD....AD...LP...PAA..vED...vOC.H...z........pAA..vID..fsPC........9ifC.H..fT..........D....v..B..fI.............f+H..........A....9y..B..fI.............f+H........3OAN.f...PD.........fISljO962O+....9CA.........DH...3OAN.f...XB.............3OB.........Pf.....zLyL4C...................vO.........9y..B..fI.......fZP..fqBI........3OAB...9K...vOC.H...l........vAA..PJj........f+DX..........D....vB....JEld5AxbzUGYo8lB....pEld5MGc0QVZuA..fBD...YP...f+LyLy7C..........................zLyL6K..n5PUJHf4....9S.....F....fhMJ0C...3OC.H...FV.......pAA...9CV....w+do7b8..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DX..........D........vO.....M........3O...f+....9y..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+H3..B...M.......fZP...bBA..XKz........f+HH...3O...f+b........3OMyLS+...f9C...9O...f9f...............................................L.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBF....P........bBM.f...T.....D..............9L.f...XB.......nFD..3pPB........9SfA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D.............7BA....fC........+zLyL2SyLyjO....+L..........C.H..fT...............v..B..HE..........D....H....v.....D....D....P........f+....9S.....A....D....P.....A........9C........f.A..zJjQ.....L.f...RA...............C.H..fT.....................C.H..fT...............v.....A...............N.....A..............A....D.........+...........................................................C....L...............3.....D.........vdT35yv0ipOZlYl9nYlY5C..........................................................L....fB..............fC....P............frP.........9C....P..3NEA...CTyLyjO...f+..f6XD........f+....AD...............P.....A....L66x7C...Qv.....L....v..........D....PA....D....D....v.....7nv09XOJb8C...3O...MCC..........E.............ev...vBC...KL...rvE...............................E...............................A....D.....A....A....L....vDtd3O1iBW+....9C..Pyv..........PA.......7AC........rv...vBC...KbA..............................PA..............................P.....A....P..........C....7nv0+SOJb0ueT3Z+...zJD..........T........Tv...PAC..vIL...mv...bBW...............................T...............................D..........D.........v.....yLyL+x0iB6iqGE1O................E........EL...Tv...bBC..vIL...mvE...............................E...............................A..........A.........L.....tdT7O8nvU+35Qg+C...............PA.......PAC...EL...mv...bBC..vIbA..............................PA..............................P..........D....P.....A....L....fT35wO...f+....9C...bP........vGD.....A.........."
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
					"text" : "udpreceive 7000"
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
					"text" : "reset"
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
					"patching_rect" : [ 34.400000512599945, 122.0, 137.0, 22.0 ],
					"saved_object_attributes" : 					{
						"heap" : 32,
						"ins" : 1,
						"outs" : 1,
						"thread" : 104
					}
,
					"text" : "s4m s4m-markov-1.scm"
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
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"midpoints" : [ 43.900000512599945, 252.400004029273987, 43.900000512599945, 252.400004029273987 ],
					"source" : [ "obj-15", 0 ]
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
					"midpoints" : [ 275.900003969669342, 78.400001168251038, 43.900000512599945, 78.400001168251038 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 157.500002205371857, 289.0, 43.900000512599945, 289.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 337.500004887580872, 79.200001180171967, 43.900000512599945, 79.200001180171967 ],
					"source" : [ "obj-20", 0 ]
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
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 132.900000512599945, 287.071879029273987, 43.900000512599945, 287.071879029273987 ],
					"source" : [ "obj-4", 1 ]
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
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 90.900000512599945, 223.400004029273987, 57.400000512599945, 223.400004029273987 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 43.900000512599945, 222.400004029273987, 43.900000512599945, 222.400004029273987 ],
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
