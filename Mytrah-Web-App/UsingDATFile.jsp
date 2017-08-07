<!DOCTYPE HTML>
<html>
<head>
<title> Downloading...</title>
</head>
<body>
<strong><h3>Hello user, your file is being downloaded, please wait...</h3></strong>
<br><br>
<%@ page import="java.io.*,java.text.*,java.util.*,org.apache.poi.xssf.usermodel.*,org.apache.poi.ss.usermodel.*,org.apache.poi.ss.util.CellReference,javax.swing.JOptionPane"%>
<%
				String finalexcelfile = " ";
				String currenttime = " ";
				int test=0;
				
				String locationOfWGET = "C:\\JSP Project\\tomcat\\webapps\\ROOT\\SidPrac\\Mytrah\\Prerequisite-Tools";
				String locationOfWGETPowerShell = "C:\\'JSP Project'\\tomcat\\webapps\\ROOT\\SidPrac\\Mytrah\\Prerequisite-Tools";
				String user = "mounika";
				String password = "Mytrah_123";
				
				try
				{
					DateFormat df = new SimpleDateFormat("HHmmss");
					Date dateobj = new Date();
					currenttime = df.format(dateobj);
					
					finalexcelfile = "FinalFirstTest."+currenttime+".xlsx";
					
					String lat = request.getParameter("lat");
					String lon = request.getParameter("lon");
					String str[] = request.getParameterValues("variable");
					String startyr = request.getParameter("startyr");
					String startmon = request.getParameter("startmon");
					String startday = request.getParameter("startday");
					String endyr = request.getParameter("endyr");
					String endmon = request.getParameter("endmon");
					String endday = request.getParameter("endday");
					
					System.out.println("Startdate is : "+startday+"/"+startmon+"/"+startyr);
					
					//Was used for testing purposes
					/*String lat = "20.5";
					String lon = "77.5";
					String str[] = {cldprs","cldtmp","disph","h1000"};
					String startyr = "1980";
					String startmon = "03";
					String startday = "01";
					String endyr = "1980";
					String endmon = "03";
					String endday = "05";
					*/
					
					String param[] = {"cldprs","cldtmp","disph","h1000","h250","h500","h850","omega500","pbltop","ps","q250","q500","q850","qv10m","qv2m","slp","t10m","t250","t2m","t2mdew","t2mwet","t500","t850","to3","tox","tqi","tql","tqv","troppb","troppt","troppv","tropq","tropt","ts","u10m","u250","u2m","u500","u50m","u850","v10m","v250","v2m","v500","v50m","v850","zlcl"};
		
					//code to get parameter presence bit string starts
					int present[] = new int[47];
					int count = 0;
					
					for(int i=0;i<47;i++)
					{
						present[i]=0;
					}
					
					for(int i=0;i<47;i++)
					{
						if(param[i].equals(str[count]))
						{
							present[i] = 1;
							count++;
						}
					
						if(count==str.length)
						break;
					}
					//code to get parameter presence bit string ends
					
					StringBuilder presence = new StringBuilder("");
					
					for(int i=0;i<47;i++)
					{
						presence.append(present[i]);
					}
					
					out.println("presence of parameters is "+presence);
					
					int numberOfDays = 0;
					int leap[] = {31,29,31,30,31,30,31,31,30,31,30,31};
					int nonleap[] = {31,28,31,30,31,30,31,31,30,31,30,31};
					int currentcase[];
					int check;
					
					//numberOfDays calculation code starts here
					
					for(int yr=Integer.parseInt(startyr);yr<=Integer.parseInt(endyr);yr++)
					{
						if(yr%4==0 && yr%100!=0)
						{
							check = 1;
						}
						
						else if(yr%100==0 && yr%400==0)
						{
							check = 1;
						}
						
						else
						{
							check = 2;
						}
						
						int mon,endingmon;
						
						
						if(yr==Integer.parseInt(startyr) && yr==Integer.parseInt(endyr))
						{
							mon = Integer.parseInt(startmon);
							endingmon = Integer.parseInt(endmon);
						}
						else if(yr==Integer.parseInt(startyr))
						{
							mon = Integer.parseInt(startmon);
							endingmon = 12;
						}
						else if(yr==Integer.parseInt(endyr))
						{
							mon = 1;
							endingmon = Integer.parseInt(endmon);
						}
						else
						{
							mon=1;
							endingmon = 12;
						}
						
						switch(check)
						{
							case 1: currentcase = leap;
							
									for(;mon<=endingmon;mon++)
									{
											int day,days;
											
											if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon) && yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = Integer.parseInt(startday);
												days = Integer.parseInt(endday);
											}
											else if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon))
											{
												day = Integer.parseInt(startday);
												days = currentcase[mon-1];
											}
											else if(yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = 1;
												days = Integer.parseInt(endday);
											}
											else
											{
												day = 1;
												days = currentcase[mon-1];
											}
											
											
											for(;day<=days;day++)
											{
												numberOfDays++;
											}
											
									}
									
									break;
									
							case 2: currentcase = nonleap;
									
									for(;mon<=endingmon;mon++)
									{
											int day,days;
											
											if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon) && yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = Integer.parseInt(startday);
												days = Integer.parseInt(endday);
											}
											else if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon))
											{
												day = Integer.parseInt(startday);
												days = currentcase[mon-1];
											}
											else if(yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = 1;
												days = Integer.parseInt(endday);
											}
											else
											{
												day = 1;
												days = currentcase[mon-1];
											}
											
											
											for(;day<=days;day++)
											{
												numberOfDays++;
											}
											
									}
						}	
					}
					
					out.print("Number of days is "+numberOfDays);
					
					//numberOfDays calculation code ends here
					
					%>
					
					<h3 style="color:green;background-color:yellow"><b>KINDLY SCROLL DOWN AND CLICK ON DOWNLOAD</b></h3><br>
					Other details presented are merely for debugging purposes<br>
					
					<%
					double latmaxWGET = Double.parseDouble(lat) + 0.625;
					double latminWGET = Double.parseDouble(lat) - 0.625;
					double lonmaxWGET = Double.parseDouble(lon) + 0.625;
					double lonminWGET = Double.parseDouble(lon) - 0.625;
					
					StringBuilder command = new StringBuilder("cmd /c cd \""+locationOfWGET+"\" & wget \"https://goldsmr4.gesdisc.eosdis.nasa.gov/cgi-bin/OTF/HTTP_DpFileDownloadMERRA2.pl?DATASET=MERRA_DP&FCP_DIR=/ftp/private/tmp/&APPLICATION=SUBSET_MERRA2&FILTER=SUBSET_MERRA2&SUB_LONMIN="+lonminWGET+"&SUB_LONMAX="+lonmaxWGET+"&SUB_LATMAX="+latmaxWGET+"&SUB_LATMIN="+latminWGET+"&OUTPUT_FORMAT=nc4c&LOOKUPID_List=M2T1NXSLV&STARTYR="+startyr+"&STARTMON="+startmon+"&STARTDAY="+startday+"&ENDYR="+endyr+"&ENDMON="+endmon+"&ENDDAY="+endday+"&");
					
					for(int i=0;i<str.length;i++)
					{
						command.append("variable="+str[i]+"&");
					}
					
					command.append("\" -O yourfilename."+currenttime+".txt");
					
					%>
					
					<br><%=command%><br>
					
					<%
					Process process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
				
					File f = new File(locationOfWGET,"yourfilename."+currenttime+".txt");
					FileInputStream fis = new FileInputStream(f);
					int length = fis.available();
					%>
					
					<br><%=length%><br>
					
					<%
					char file[] = new char[length];
					for(int i=0;i<length;i++)
					{
							file[i] = (char)fis.read();
					}
					StringBuilder wgetId= new StringBuilder("");
				
					for(int i=0;i<length;i++)
					{
							
							if(file[i]=='W' && file[i+1]=='G' && file[i+2]=='E' && file[i+3]=='T' && file[i+4]=='_' && file[i+5]=='I' && file[i+6]=='D')
							{
								for(int j=0;j<8;j++)
								{
									wgetId.append(file[i+8+j]);
								}
								break;
							}
					}
					
					fis.close();
					
					//next 3 lines delete the yourfilename.currenttime.txt file
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+" & del /Q yourfilename."+currenttime+".txt");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					%>
					
					<br>WGET_ID = <%=wgetId%><br>
					
					<%
					StringBuilder command2 = new StringBuilder("https://goldsmr4.gesdisc.eosdis.nasa.gov/cgi-bin/OTF/HTTP_DpFileDownloadMERRA2.pl?WGET_ID=");
					command2 = command2.append(wgetId).append("&APPLICATION=SUBSET_MERRA2");
					
					command = new StringBuilder("cmd /c cd \""+locationOfWGET+"\" & wget -r \"");
					command = command.append(command2).append("\" -O wget_week1of1980."+currenttime+".dat");
					%>
					
					<br><%=command%><br>
					
					<%
					
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					//code from Practice2 starts here
					
					int presenceOfFiles[] = new int[numberOfDays];
					int currentnoofdays = 0;
					
					//code to create the needed 'node' specific folders
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\ & mkdir "+lat+"_"+lon);	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & mkdir Final");
									
					process = Runtime.getRuntime().exec(command.toString());
											
					process.waitFor();
					
					//code to search for the presence of required files starts
					
					for(int yr=Integer.parseInt(startyr);yr<=Integer.parseInt(endyr);yr++)
					{
						String year = "" + yr;
						
						if(yr%4==0 && yr%100!=0)
						{
							check = 1;
						}
						
						else if(yr%100==0 && yr%400==0)
						{
							check = 1;
						}
						
						else
						{
							check = 2;
						}
						
						int mon,endingmon;
						
						
						if(yr==Integer.parseInt(startyr) && yr==Integer.parseInt(endyr))
						{
							mon = Integer.parseInt(startmon);
							endingmon = Integer.parseInt(endmon);
						}
						else if(yr==Integer.parseInt(startyr))
						{
							mon = Integer.parseInt(startmon);
							endingmon = 12;
						}
						else if(yr==Integer.parseInt(endyr))
						{
							mon = 1;
							endingmon = Integer.parseInt(endmon);
						}
						else
						{
							mon=1;
							endingmon = 12;
						}
						
						switch(check)
						{
							case 1: currentcase = leap;
							
									for(;mon<=endingmon;mon++)
									{
											String month;
											
											if(mon/10==0)
											{
												month = "0" + mon;
											}
											else
											{
												month = "" + mon;
											}
											
											int day,days;
											
											if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon) && yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = Integer.parseInt(startday);
												days = Integer.parseInt(endday);
											}
											else if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon))
											{
												day = Integer.parseInt(startday);
												days = currentcase[mon-1];
											}
											else if(yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = 1;
												days = Integer.parseInt(endday);
											}
											else
											{
												day = 1;
												days = currentcase[mon-1];
											}
											
											
											for(;day<=days;day++)
											{
												String date;
												
												if(day/10==0)
												{
													date = "0" + day;
												}
												else
												{
													date = "" + day;
												}
												
												out.println("Checking for presence of "+year+""+month+""+date+"."+presence+".nc");
												
												command = new StringBuilder("cmd /c cd "+locationOfWGET+"SomeFiles\\"+lat+"_"+lon+" &  dir /b /a-d | find \""+year+""+month+""+date+"."+presence+".nc\"");
									
												process = Runtime.getRuntime().exec(command.toString());
												
												BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
												
												char c = (char)br.read();
												
												out.println(c + " " +(int)c);
												
												if(c!=65535)
												{
													presenceOfFiles[currentnoofdays] = 1;
													currentnoofdays++;
												}
												else
												{
													presenceOfFiles[currentnoofdays] = 0;
													currentnoofdays++;
												}
					
												process.waitFor();
												
												br.close();
									
											}
											
									}
									
									break;
									
							case 2: currentcase = nonleap;
									
									for(;mon<=endingmon;mon++)
									{
											String month;
											
											if(mon/10==0)
											{
												month = "0" + mon;
											}
											else
											{
												month = "" + mon;
											}
											
											int day,days;
											
											if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon) && yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = Integer.parseInt(startday);
												days = Integer.parseInt(endday);
											}
											else if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon))
											{
												day = Integer.parseInt(startday);
												days = currentcase[mon-1];
											}
											else if(yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = 1;
												days = Integer.parseInt(endday);
											}
											else
											{
												day = 1;
												days = currentcase[mon-1];
											}
											
											
											for(;day<=days;day++)
											{
												String date;
												
												if(day/10==0)
												{
													date = "0" + day;
												}
												else
												{
													date = "" + day;
												}
												
												out.println("Checking for presence of "+year+""+month+""+date+"."+presence+".nc");
												
												command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" &  dir /b /a-d | find \""+year+""+month+""+date+"."+presence+".nc\"");
									
												process = Runtime.getRuntime().exec(command.toString());
												
												BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
												
												char c = (char)br.read();
												
												out.println(c + " " +(int)c);
												
												if(c!=65535)
												{
													presenceOfFiles[currentnoofdays] = 1;
													currentnoofdays++;
												}
												else
												{
													presenceOfFiles[currentnoofdays] = 0;
													currentnoofdays++;
												}
												
												process.waitFor();
												
												br.close();
											}
											
									}
						}	
					}
					
					for(int i=0;i<numberOfDays;i++)
					{
						out.print(presenceOfFiles[i]+" ");
					}
		
					out.println();
					
					//code to search for the presence of required files ends here
					
					//code to create a new .dat file that conatins only links for the files not present and that need to be downloaded
					
					BufferedReader br = new BufferedReader(new FileReader(new File(locationOfWGET+"\\wget_week1of1980."+currenttime+".dat")));
					
					BufferedWriter bw = new BufferedWriter(new FileWriter(new File(locationOfWGET+"\\wget_week1of1980da."+currenttime+".dat"))); 
		
					int linepos = 0;
					int nooffilestodownload = 0;
		
					String currentline;
					
					System.out.println("NumberOfDays is "+numberOfDays);
		
					while(linepos<numberOfDays)
					{
						currentline=br.readLine();
						
						if(presenceOfFiles[linepos]==0)
						{
							bw.write(currentline+'\n');
							
							nooffilestodownload++;
							
							linepos++;
						}
						else
						{
							linepos++;
						}
					}
					
					br.close();
					bw.close();
					
					//the next 3 lines delete wget_week1of1980.currenttime.dat file
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+" & del /Q wget_week1of1980."+currenttime+".dat");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					//code from practice2 ends here
					
					char c;
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & dir /b /a-d | find \"MERRA2\" | find /c /v \"\"");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					br = new BufferedReader(new InputStreamReader(process.getInputStream()));
					
					StringBuilder number = new StringBuilder("");
					
					while((c=(char)br.read())!=65535)
					{
						number.append(c);
					}	
					
					process.waitFor();
					
					br.close();
					
					int countoffiles = Integer.parseInt(number.toString().trim());
					%>
					
					<br><%=countoffiles%><br>
					
					<%
					
					while(countoffiles!=nooffilestodownload)
					{
					command = new StringBuilder("cmd /c cd \""+locationOfWGET+"\" & wget --user="+user+" --password="+password+" --quiet -nc --load-cookies \"./.urs_cookies\" --save-cookies \"./.urs_cookies\" --auth-no-challenge=on --keep-session-cookies --content-disposition -i wget_week1of1980da."+currenttime+".dat -P ./SomeFiles/"+lat+"_"+lon);
					
					%>
					
					<br><%=command%><br>
					
					<%
					process = Runtime.getRuntime().exec(command.toString());
					 
					process.waitFor();
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & dir /b /a-d | find \"MERRA2\" | find /c /v \"\"");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					br = new BufferedReader(new InputStreamReader(process.getInputStream()));
					
					number = new StringBuilder("");
					
					while((c=(char)br.read())!=65535)
					{
						number.append(c);
					}	
					
					process.waitFor();
					
					br.close();
					
					countoffiles = Integer.parseInt(number.toString().trim());
					
					%>
					
					<br><%=countoffiles%><br>
					<br>Hello!<br>
					<%
					
					}
					
					//next few lines obtain the first 26 characters of the .nc4 file downloaded (any 1 of them, first match actually)
					
					/*command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & dir /b /a-d | find \"MERRA2\"");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					br = new BufferedReader(new InputStreamReader(process.getInputStream()));
					
					StringBuilder first26Characters = new StringBuilder("");
					
					int characterIndex = 1;
					
					while((c=(char)br.read())!=65535)
					{
						if(characterIndex<=26)
						{
							first26Characters.append(c);
							characterIndex++;
						}
						else
						{break;}
					}	
					
					process.waitFor();
					
					br.close();
										
					System.out.println("first 26 characters are = "+first26Characters);
					*/
					
					//the next 3 lines delete the file wget_week1of1980da.currenttime.dat 
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+" & del /Q wget_week1of1980da."+currenttime+".dat");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					//code for conversion from .nc4 to nc and the concatenation of all .nc files into a single .nc file starts here
					
					command2 = new StringBuilder("powershell /c cd "+locationOfWGETPowerShell+"\\SomeFiles\\"+lat+"_"+lon+" ; ncrcat ");
					
					currentnoofdays = 0;
					
					for(int yr=Integer.parseInt(startyr);yr<=Integer.parseInt(endyr);yr++)
					{
						String year = "" + yr;
						
						if(yr%4==0 && yr%100!=0)
						{
							check = 1;
						}
						
						else if(yr%100==0 && yr%400==0)
						{
							check = 1;
						}
						
						else
						{
							check = 2;
						}
						
						int mon,endingmon;
						
						
						if(yr==Integer.parseInt(startyr) && yr==Integer.parseInt(endyr))
						{
							mon = Integer.parseInt(startmon);
							endingmon = Integer.parseInt(endmon);
						}
						else if(yr==Integer.parseInt(startyr))
						{
							mon = Integer.parseInt(startmon);
							endingmon = 12;
						}
						else if(yr==Integer.parseInt(endyr))
						{
							mon = 1;
							endingmon = Integer.parseInt(endmon);
						}
						else
						{
							mon=1;
							endingmon = 12;
						}
						
						switch(check)
						{
							case 1: currentcase = leap;
							
									for(;mon<=endingmon;mon++)
									{
											String month;
											
											if(mon/10==0)
											{
												month = "0" + mon;
											}
											else
											{
												month = "" + mon;
											}
											
											int day,days;
											
											if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon) && yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = Integer.parseInt(startday);
												days = Integer.parseInt(endday);
											}
											else if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon))
											{
												day = Integer.parseInt(startday);
												days = currentcase[mon-1];
											}
											else if(yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = 1;
												days = Integer.parseInt(endday);
											}
											else
											{
												day = 1;
												days = currentcase[mon-1];
											}
											
											
											for(;day<=days;day++)
											{
												String date;
												
												if(day/10==0)
												{
													date = "0" + day;
												}
												else
												{
													date = "" + day;
												}
												
												command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & dir /b /a-d | find \""+year+""+month+""+date+".SUB.nc4\"");	
								
												process = Runtime.getRuntime().exec(command.toString());
												
												br = new BufferedReader(new InputStreamReader(process.getInputStream()));
												
												StringBuilder nc4FileName = new StringBuilder("");
												
												while((c=(char)br.read())!=65535)
												{
													nc4FileName.append(c);
												}	
												
												process.waitFor();
												
												br.close();
												
												if(presenceOfFiles[currentnoofdays]==0)
												{
													command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & ncks -3 "+nc4FileName.toString().trim()+" "+year+""+month+""+date+"."+presence+".nc");
										
													process = Runtime.getRuntime().exec(command.toString());
						
													process.waitFor();
												}
									
												currentnoofdays++;
												command2.append(""+year+""+month+""+date+"."+presence+".nc ");
											}
											
									}
									
									break;
									
							case 2: currentcase = nonleap;
									
									for(;mon<=endingmon;mon++)
									{
											String month;
											
											if(mon/10==0)
											{
												month = "0" + mon;
											}
											else
											{
												month = "" + mon;
											}
											
											int day,days;
											
											if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon) && yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = Integer.parseInt(startday);
												days = Integer.parseInt(endday);
											}
											else if(yr==Integer.parseInt(startyr) && mon==Integer.parseInt(startmon))
											{
												day = Integer.parseInt(startday);
												days = currentcase[mon-1];
											}
											else if(yr==Integer.parseInt(endyr) && mon==Integer.parseInt(endmon))
											{
												day = 1;
												days = Integer.parseInt(endday);
											}
											else
											{
												day = 1;
												days = currentcase[mon-1];
											}
											
											
											for(;day<=days;day++)
											{
												String date;
												
												if(day/10==0)
												{
													date = "0" + day;
												}
												else
												{
													date = "" + day;
												}
												
												command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & dir /b /a-d | find \""+year+""+month+""+date+".SUB.nc4\"");	
								
												process = Runtime.getRuntime().exec(command.toString());
												
												br = new BufferedReader(new InputStreamReader(process.getInputStream()));
												
												StringBuilder nc4FileName = new StringBuilder("");
												
												while((c=(char)br.read())!=65535)
												{
													nc4FileName.append(c);
												}	
												
												process.waitFor();
												
												br.close();
												
												if(presenceOfFiles[currentnoofdays]==0)
												{
													command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & ncks -3 "+nc4FileName+" "+year+""+month+""+date+"."+presence+".nc");
										
													process = Runtime.getRuntime().exec(command.toString());
						
													process.waitFor();
												}
									
												currentnoofdays++;
												command2.append(""+year+""+month+""+date+"."+presence+".nc ");
											}
											
									}
						}	
					}
					
					command2.append("1980."+currenttime+".nc");
					
					System.out.println(command2);
					
					process = Runtime.getRuntime().exec(command2.toString());
					
					process.waitFor();
					
					//the next 3 lines delete all .nc4 files that just got downloaded 
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & del /Q *.nc4");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					//conversion and concatenation code ends here
					
					double latmax = Double.parseDouble(lat) + 0.1;
					double latmin = Double.parseDouble(lat) - 0.1;
					double lonmax = Double.parseDouble(lon) + 0.1;
					double lonmin = Double.parseDouble(lon) - 0.1;
					
					out.println("latrange and lonrange are "+latmax+" "+latmin+" & "+lonmax+" "+lonmin+"-----------------");
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & ncks -d lon,"+lonmin+","+lonmax+" -d lat,"+latmin+","+latmax+" 1980."+currenttime+".nc "+lat+"_"+lon+"."+currenttime+".nc");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					out.println("I am here 1!");
					
					//the next 3 lines delete the file 1980.currenttime.nc
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & del /Q 1980."+currenttime+".nc");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & copy "+lat+"_"+lon+"."+currenttime+".nc Final");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					//the next 3 lines delete the file lat_lon.currenttime.nc present in SomeFiles
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+" & del /Q "+lat+"_"+lon+"."+currenttime+".nc");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					/*Code to create excel sheet from nc file starts here*/
				
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final & ncdump "+lat+"_"+lon+"."+currenttime+".nc >> testing1."+currenttime+".txt");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					//the next 3 lines delete the file lat_lon.currenttime.nc present in Final
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final & del /Q "+lat+"_"+lon+"."+currenttime+".nc");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					//code to generate both excel files starts
					
					f = new File(locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final\\testing1."+currenttime+".txt");
					br = new BufferedReader(new FileReader(f));
					String line;
					StringBuilder parameter = new StringBuilder("");
					int sheetno = 1,rowno = 1,cellno = 0,totalnorows = 0;
					c = ' ';
					
					String startDate = startday+"/"+startmon+"/"+startyr+" 00:00:00";
					df = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
					System.out.println("startDate just before entry : "+startDate);
					dateobj = df.parse(startDate);
					
					System.out.println("date is -------> "+dateobj);
					
					while(!(line=br.readLine()).equals("data:"))
					{}

					XSSFWorkbook workbook = new XSSFWorkbook();
					XSSFSheet spreadsheet;
					XSSFRow row;
					
					
					StringBuilder value;
					Double numericValue;
					
					while(c!='}')
					{
						while((c=(char)br.read())==' ' || c=='\n' || c==13)
						{}
					
						parameter.append(c);
						
						while((c=(char)br.read())!='=')
						{
							if(c!=' ' && c!='\n')
							parameter.append(c);
						}
						
						spreadsheet = workbook.createSheet(parameter.toString());
						row = spreadsheet.createRow((short)0);		
						row.createCell((short)cellno).setCellValue(parameter.toString());
						
						value = new StringBuilder("");
								
						while((c=(char)br.read())!=';')
						{
							while((c=(char)br.read())==' ' || c=='\n' || c==13)
							{}
									
							value.append(c);

							while((c=(char)br.read())!=',' && c!=' ')
							value.append(c);
						
							if(!value.toString().equals("_"))
							numericValue = Double.parseDouble(value.toString());
							else
							numericValue =(double) 0;	
							
							row = spreadsheet.createRow((short) rowno);		
							row.createCell((short)cellno).setCellValue(numericValue);
							value = new StringBuilder("");
							
							rowno++;
						}
						
						totalnorows = rowno-1;
						rowno=1;
						parameter = new StringBuilder("");
						c=(char)br.read();
						c=(char)br.read();
						c=(char)br.read();
					}
					
					br.close();
					
					//the next 3 lines delete the file testing1.currenttime.txt
					
					command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final & del /Q testing1."+currenttime+".txt");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();
					
					//step 2 starts here
					
					FileOutputStream fos = new FileOutputStream(new File(locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx"));
					workbook.write(fos);
					fos.close();
					out.println("FirstTest."+currenttime+".xlsx written successfully");
					%>
					
						<br><br>
					
					<%
					f = new File(locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx");
					fis = new FileInputStream(f);
					//Get the workbook instance for XLSX file 
					workbook = new XSSFWorkbook(fis);
					if(f.isFile() && f.exists())
					{
						out.println("FirstTest."+currenttime+".xlsx file open successfully.");
					}
					else
					{
						out.println("Error to open FirstTest."+currenttime+".xlsx file.");
					}
					%>
					
						<br><br>
					
					<%
					rowno = cellno = 0;
					
					int numberOfSheets = workbook.getNumberOfSheets();
					
					String parameters[] = new String[numberOfSheets];
					int done[] = new int[numberOfSheets];
					
					for(int i=0;i<numberOfSheets;i++)
					{
							parameters[i] = workbook.getSheetName(i);
							done[i] = 0;
					}
					
					//all parameter names present in the excel sheet are stored in parameters[] array
					
					spreadsheet = workbook.createSheet("final");
					
					row = spreadsheet.createRow((short)rowno);	
					rowno++;
					row.createCell((short)cellno).setCellValue("lon");
					cellno++;
					row.createCell((short)cellno).setCellFormula("lon!A2");
					cellno++;
					row.createCell((short)cellno).setCellValue("lat");
					cellno++;
					row.createCell((short)cellno).setCellFormula("lat!A2");
					cellno++;
					
					cellno = 0;
					
					row = spreadsheet.createRow((short)rowno);	
					rowno++;
					
					row.createCell((short)cellno).setCellValue("Date");
					cellno++;
					
					int exists1=-1;
					int exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("U2M"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("V2M"))
						{
							exists2 = i;
						}
						
						if(exists1!=-1 && exists2!=-1)
						{
							done[exists1] = 1;
							done[exists2] = 1;
							break;
						}
					}
					
					if(exists1!=-1 && exists2!=-1)
					{
						row.createCell((short)cellno).setCellValue("Wind speed@2m");
						cellno++;
					}
					
					exists1=exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("U10M"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("V10M"))
						{
							exists2 = i;
						}
						
						if(exists1!=-1 && exists2!=-1)
						{
							done[exists1] = 1;
							done[exists2] = 1;
							break;
						}
					}
					
					if(exists1!=-1 && exists2!=-1)
					{
						row.createCell((short)cellno).setCellValue("Wind speed@10m");
						cellno++;
					}
					
					exists1=exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("U50M"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("V50M"))
						{
							exists2 = i;
						}
						
						if(exists1!=-1 && exists2!=-1)
						{
							done[exists1] = 1;
							done[exists2] = 1;
							break;
						}
					}
					
					if(exists1!=-1 && exists2!=-1)
					{
						row.createCell((short)cellno).setCellValue("Wind speed@50m");
						cellno++;
					}
					
					exists1=exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("U2M"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("V2M"))
						{
							exists2 = i;
						}
						
						if(exists1!=-1 && exists2!=-1)
						{
							done[exists1] = 1;
							done[exists2] = 1;
							break;
						}
					}
					
					if(exists1!=-1 && exists2!=-1)
					{
						row.createCell((short)cellno).setCellValue("Wind Direction@2m");
						cellno++;
					}
					
					exists1=exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("U10M"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("V10M"))
						{
							exists2 = i;
						}
						
						if(exists1!=-1 && exists2!=-1)
						{
							done[exists1] = 1;
							done[exists2] = 1;
							break;
						}
					}
					
					if(exists1!=-1 && exists2!=-1)
					{
						row.createCell((short)cellno).setCellValue("Wind Direction@10m");
						cellno++;
					}
					
					exists1=exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("U50M"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("V50M"))
						{
							exists2 = i;
						}
						
						if(exists1!=-1 && exists2!=-1)
						{
							done[exists1] = 1;
							done[exists2] = 1;
							break;
						}
					}
					
					if(exists1!=-1 && exists2!=-1)
					{
						row.createCell((short)cellno).setCellValue("Wind Direction@50m");
						cellno++;
					}
					
					exists1=exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("T2M"))
						{
							exists1 = i;
						}
						
						if(exists1!=-1)
						{
							done[exists1] = 1;
							break;
						}
					}
					
					if(exists1!=-1)
					{
						row.createCell((short)cellno).setCellValue("Temperature@2m");
						cellno++;
					}
					
					exists1=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("T10M"))
						{
							exists1 = i;
						}
						
						if(exists1!=-1)
						{
							done[exists1] = 1;
							break;
						}
						
					}
					
					if(exists1!=-1)
					{
						row.createCell((short)cellno).setCellValue("Temperature@10m");
						cellno++;
					}
					
					exists1=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("PS"))
						{
							exists1 = i;
						}
						
						if(exists1!=-1)
						{
							done[exists1] = 1;
							break;
						}
					}
					
					if(exists1!=-1)
					{
						row.createCell((short)cellno).setCellValue("Surface Pressure");
						cellno++;
					}
					
					exists1=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("lat") || parameters[i].equals("lon") || parameters[i].equals("time"))
						done[i] = 1;
					}
					//till here all intial headers for initial columns have been added
					
					int current = 1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
							if(done[i]==0)
							{
								row.createCell((short)cellno).setCellValue(parameters[i]);
								cellno++;
								done[i] = ++current;
							}
					}
					
					while(totalnorows!=0)
					{
						cellno = 0;
						row = spreadsheet.createRow((short)rowno);
						
						
						if(rowno==2)
						{
							CellStyle cellStyle = workbook.createCellStyle();
							CreationHelper createHelper = workbook.getCreationHelper();
							cellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd/mm/yyyy hh:mm:ss"));
							Cell cell = row.createCell((short)cellno);
							cell.setCellValue(dateobj);
							cell.setCellStyle(cellStyle);
							
							cellno++;
						}
						else
						{
							CellStyle cellStyle = workbook.createCellStyle();
							CreationHelper createHelper = workbook.getCreationHelper();
							cellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd/mm/yyyy hh:mm:ss"));
							Cell cell = row.createCell((short)cellno);
							cell.setCellStyle(cellStyle);
							cell.setCellFormula("A"+rowno+"+(1/24)");
							cellno++;
						}
						
						
						if(workbook.getSheet("U2M")!=null && workbook.getSheet("V2M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("SQRT((U2M!A"+rowno+" * U2M!A"+rowno+") + (V2M!A"+rowno+" * V2M!A"+rowno+"))");
							cellno++;
						}
						if(workbook.getSheet("U10M")!=null && workbook.getSheet("V10M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("SQRT((U10M!A"+rowno+" * U10M!A"+rowno+") + (V10M!A"+rowno+" * V10M!A"+rowno+"))");
							cellno++;
						}
						if(workbook.getSheet("U50M")!=null && workbook.getSheet("V50M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("SQRT((U50M!A"+rowno+" * U50M!A"+rowno+") + (V50M!A"+rowno+" * V50M!A"+rowno+"))");
							cellno++;
						}
						if(workbook.getSheet("U2M")!=null && workbook.getSheet("V2M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("ROUND(DEGREES(ATAN((U2M!A"+rowno+"/V2M!A"+rowno+")))+(IF(V2M!A"+rowno+">=0,180,IF((AND(U2M!A"+rowno+">=0,V2M!A"+rowno+"<0)),360,IF((AND(U2M!A"+rowno+"<0,V2M!A"+rowno+"<0)),0,9999)))),0)");
							cellno++;
						}
						if(workbook.getSheet("U10M")!=null && workbook.getSheet("V10M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("ROUND(DEGREES(ATAN((U10M!A"+rowno+"/V10M!A"+rowno+")))+(IF(V10M!A"+rowno+">=0,180,IF((AND(U10M!A"+rowno+">=0,V10M!A"+rowno+"<0)),360,IF((AND(U10M!A"+rowno+"<0,V10M!A"+rowno+"<0)),0,9999)))),0)");
							cellno++;
						}
						if(workbook.getSheet("U50M")!=null && workbook.getSheet("V50M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("ROUND(DEGREES(ATAN((U50M!A"+rowno+"/V50M!A"+rowno+")))+(IF(V50M!A"+rowno+">=0,180,IF((AND(U50M!A"+rowno+">=0,V50M!A"+rowno+"<0)),360,IF((AND(U50M!A"+rowno+"<0,V50M!A"+rowno+"<0)),0,9999)))),0)");
							cellno++;
						}
						if(workbook.getSheet("T2M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("T2M!A"+rowno+" - 273");
							cellno++;
						}
						if(workbook.getSheet("T10M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("T10M!A"+rowno+" - 273");
							cellno++;
						}
						if(workbook.getSheet("PS")!=null)
						{
							row.createCell((short)cellno).setCellFormula("PS!A"+rowno+"/100");
							cellno++;
						}
						
						//this for loop puts values into cells for non-initial parameters
						for(int i=2;i<=current;i++)
						{
							int j;
							
							for(j=0;j<numberOfSheets;j++)
							{
								if(done[j]==i)
								break;
							}
						
							row.createCell((short)cellno).setCellFormula(parameters[j]+"!A"+rowno);
							cellno++;	
						}
						
						rowno++;
						totalnorows--;
					}
					
					//step 2 ends here
					fos = new FileOutputStream(new File(locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx"));
					workbook.write(fos);
					fos.close();
					out.println("FirstTest."+currenttime+".xlsx written successfully");
					%>
					
						<br><br>
					
					<%
					//code to copy spreadsheet named 'final' from 'FirstTest.'+currenttime+'.xlsx' into another excel file named 'FinalFirstTest.'+currenttime+'.xlsx'
					
						fis = new FileInputStream(new File(locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx"));
						
						//Get the workbook instance for XLS file 
						workbook = new XSSFWorkbook(fis);
						XSSFWorkbook newworkbook = new XSSFWorkbook();

						//Get first sheet from the workbook
						spreadsheet = workbook.getSheet("final");
						XSSFSheet newsheet = newworkbook.createSheet("final");
						
						//Iterate through each rows from first sheet
						Iterator <Row> rowIterator = spreadsheet.iterator();
						rowno = 0;
						
						while(rowIterator.hasNext()) {
							row = (XSSFRow)rowIterator.next();
							
							cellno=0;
							
							//For each row, iterate through each columns
							Iterator <Cell> cellIterator = row.cellIterator();	
							FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
							XSSFRow newrow = newsheet.createRow((short)rowno);
							
							while(cellIterator.hasNext()) {
								Cell cell = cellIterator.next();
								
								if(rowno>1 && cellno==0)
								{
									//newrow.createCell((short)cellno).setCellValue(cell.getDateCellValue());
									CellValue cellValue = evaluator.evaluate(cell);
									Cell newcell = newrow.createCell((short)cellno);
									CellStyle cellStyle = newworkbook.createCellStyle();
									CreationHelper createHelper = newworkbook.getCreationHelper();
									cellStyle.setDataFormat(createHelper.createDataFormat().getFormat("dd/mm/yyyy hh:mm:ss"));
									newcell.setCellStyle(cellStyle);
									newcell.setCellValue(cellValue.getNumberValue());
								}
								else
								switch(cell.getCellTypeEnum()) {
									case BOOLEAN:
										newrow.createCell((short)cellno).setCellValue(cell.getBooleanCellValue());
										break;
									case NUMERIC:
										newrow.createCell((short)cellno).setCellValue(cell.getNumericCellValue());
										break;
									case STRING:
										newrow.createCell((short)cellno).setCellValue(cell.getStringCellValue());
										break;
									case FORMULA: 
										CellValue cellValue = evaluator.evaluate(cell);
										newrow.createCell((short)cellno).setCellValue(cellValue.getNumberValue());
										break;
									case BLANK:
										break;
									case ERROR:
										break;
								}
								cellno++;
							}
							rowno++;
						}
						fis.close();
						
						//the next 3 lines delete the file FirstTest.currenttime.xlsx
						
						command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final & del /Q FirstTest."+currenttime+".xlsx");	
										
						process = Runtime.getRuntime().exec(command.toString());
							
						process.waitFor();
						
						fos = new FileOutputStream(new File(locationOfWGET+"\\SomeFiles\\"+lat+"_"+lon+"\\Final\\FinalFirstTest."+currenttime+".xlsx"));
						newworkbook.write(fos);
						fos.close();
						out.println("FinalFirstTest."+currenttime+".xlsx written successfully");
						
						test=0;
						
						for(int i=0;i<numberOfSheets;i++)
						{
								if(done[i]>1)
								{
									String node = lat+"_"+lon;
									
									%>
									
									<script>
									alert("The file you are about to download has some parameters not used in any formula! Such parameters are simply appended at the end of the columns with formulas. After you download this excel file it will be deleted from the server. Click ok to download.");
									var loc="DownloadExcelFileMerra2.jsp?fileName=<%= finalexcelfile%>&currenttime=<%= currenttime %>&node=<%=node %>";
									window.location = loc;
									</script>
									
									<%
									
									test=1;
									break;
								}
						}
	
						if(test==0)
						{
							String node = lat+"_"+lon;
							
							%>
							
							<script>
							alert("After you download this excel file it will be deleted from the server. Click ok to download.");
							var loc="DownloadExcelFileMerra2.jsp?fileName=<%= finalexcelfile%>&currenttime=<%= currenttime %>&node=<%=node %>";
							window.location = loc;
							</script>
							
							<%
						}
				}
				catch(Exception e)
				{
					StringWriter sw = new StringWriter();
					PrintWriter pw = new PrintWriter(sw);
					e.printStackTrace(pw);
					out.println(sw.toString());
				}
				
%>
	
</body>
</html>