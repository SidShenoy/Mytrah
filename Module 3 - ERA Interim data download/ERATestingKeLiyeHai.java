
import org.ecmwf.*;
import org.json.*;
import java.util.Map;
import java.io.*;
import java.text.*;
import java.util.*;
import org.apache.poi.xssf.usermodel.*;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellReference;
import javax.swing.JOptionPane;

class ERATestingKeLiyeHai
{
		public static void main(String args[])
		{

				//this is for downloading between latitudes 26.719N-19.512S and between longitudes 74.531W-83.496E
				//further this is to download data from 01/01/1980 to 07/01/1980 i.e. first week of the year 1980
				//this has been done due to memory constraints
				
				
				/*String lat = "15";
				String lon = "76.5";
				String str[] = request.getParameterValues("variable");
				String startyr = request.getParameter("startyr");
				String startmon = request.getParameter("startmon");
				String startday = request.getParameter("startday");
				String endyr = request.getParameter("endyr");
				String endmon = request.getParameter("endmon");
				String endday = request.getParameter("endday");
				*/
				
				String lat = "16.5";
				String lon = "78";
				//String str[] = {"134.128","165.128","166.128","167.128"};
				String str[] = {"167.128","165.128","166.128","134.128"};
				String startyr = "1979";
				String startmon = "01";
				String startday = "01";
				String endyr = "1979";
				String endmon = "01";
				String endday = "05";
				
				double latmax = Double.parseDouble(lat) + 0.1;
				double latmin = Double.parseDouble(lat) - 0.1;
				double lonmax = Double.parseDouble(lon) + 0.1;
				double lonmin = Double.parseDouble(lon) - 0.1;
				
				String startDate = startyr+startmon+startday;
				String endDate = endyr+endmon+endday;
				String param[] = {"168.128","167.128","165.128","166.128","174.128","148.128","188.128","35.128","36.128","37.128","38.128","234.128","186.128","151.128","230.140","232.140","187.128","34.128","31.128","229.140","198.128","235.128","32.128","33.128","141.128","139.128","170.128","183.128","236.128","134.128","173.128","238.128","164.128","206.128","136.128","137.128","57.162","56.162","80.162","79.162","85.162","82.162","81.162","84.162","87.162","83.162","86.162","90.162","88.162","73.162","69.162","67.162","65.162","77.162","75.162","71.162","64.162","59.162","53.162","92.162","91.162","89.162","74.162","70.162","68.162","66.162","78.162","76.162","72.162","58.162","61.162","62.162","54.162","60.162","63.162","55.162","39.128","40.128","41.128","42.128"};
				
				//code to get parameter presence bit string starts
				int present[] = new int[80];
				int count = 0;
					
				for(int i=0;i<80;i++)
				{
					present[i]=0;
				}
					
				for(int i=0;i<80;i++)
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
					
				for(int i=0;i<80;i++)
				{
					presence.append(present[i]);
				}
					
				System.out.println("presence of parameters is "+presence);
				
				StringBuilder paramToBeRetrieved = new StringBuilder("");
				
				for(int i=0;i<str.length;i++)
				{
					
					if(i!=str.length-1)
					paramToBeRetrieved.append(str[i]+"/");
					
					else
					paramToBeRetrieved.append(str[i]);
				}
				
				
				
				String finalexcelfile = " ";
				String currenttime = " ";
				int test=0;
				
				DateFormat df = new SimpleDateFormat("HHmmss");
				Date dateobj = new Date();
				currenttime = df.format(dateobj);
				
				finalexcelfile = "FinalFirstTest."+currenttime+".xlsx";
				
				try
				{
					StringBuilder command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+" &  dir /b /a-d | find \""+startDate+"_"+endDate+"."+presence+".nc\"");
									
					Process process = Runtime.getRuntime().exec(command.toString());
											
					BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
												
					char c = (char)br.read();
												
					System.out.println(c + " " +(int)c);
												
					int downloadNeeded;							
												
					if(c!=65535)
					{
						downloadNeeded = 0;
					}
					else
					{
						downloadNeeded = 1;
					}
					
					process.waitFor();
												
					br.close();
					
				
					
					
					if(downloadNeeded==1)
					{
						DataServer server = new DataServer();

						JSONObject requestToBeSent = new JSONObject();
			
						requestToBeSent.put("dataset","interim");	////
						requestToBeSent.put("class" ,"ei");	////
						requestToBeSent.put("type","an");	////
						requestToBeSent.put("stream","oper");	////
						requestToBeSent.put("expver","1");	////
						requestToBeSent.put("repres","sh");
						requestToBeSent.put("levtype","sfc");////
						requestToBeSent.put("param",paramToBeRetrieved.toString());////
						requestToBeSent.put("time","00/06/12/18");////
						requestToBeSent.put("step","0");	////
						requestToBeSent.put("domain","G");
						requestToBeSent.put("resol","AUTO");
						requestToBeSent.put("area","42/66.75/5.25/100.5");////
						requestToBeSent.put("grid","0.75/0.75");////
						requestToBeSent.put("padding","0");
						requestToBeSent.put("expect","ANY");
						requestToBeSent.put("date",startDate+"/to/"+endDate);////
						requestToBeSent.put("format","netcdf");////
						requestToBeSent.put("target","C:/Users/Siddhanth/Documents/JspProjectDocuments/parametersandstuff/SomeFilesForERA/"+lat+"_"+lon+"/"+startDate+"_"+endDate+"."+presence+".nc");////
						
						/*Map<String, String> env = System.getenv();
						String home = env.get("HOME");*/
						
						System.out.println(requestToBeSent);
							
						
							
						server.retrieve(requestToBeSent);
						
						System.out.println("Successfully RETRIEVED!!!");
					}
					
					
					command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+" & ncks -d longitude,"+lonmin+","+lonmax+" -d latitude,"+latmin+","+latmax+" "+startDate+"_"+endDate+"."+presence+".nc "+lat+"_"+lon+"."+currenttime+".nc");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+" & copy "+lat+"_"+lon+"."+currenttime+".nc Final");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final & ncdump "+lat+"_"+lon+"."+currenttime+".nc >> testing1."+currenttime+".txt");	
								
					process = Runtime.getRuntime().exec(command.toString());
					
					process.waitFor();
					
					//code to generate both excel files starts
					
					//code to get scale_factors and add_offsets starts for all parameters here
					
					File f = new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\testing1."+currenttime+".txt");
					br = new BufferedReader(new FileReader(f));
					String line;
					int number_of_parameters = str.length;
					String parameter_name[] = new String[number_of_parameters];
					double parameter_scale_factor[] = new double[number_of_parameters];
					double parameter_add_offset[] = new double[number_of_parameters];
					int current_param = 0;
					int match1,match2;
					double scale_factor,add_offset;
					
					while(!(line=br.readLine()).equals("variables:"))
					{}
				
					System.out.println(line);
				
					while(!(line = br.readLine()).equals("// global attributes:"))	
					{
						match1 = line.indexOf("scale_factor =");
						
						if(match1!=-1)
						{
							//System.System.out.println(line.substring(match1));
							//System.System.out.println(match1);
							parameter_name[current_param] = line.substring(2,match1-1);
							scale_factor = Double.parseDouble(line.substring(match1+15).substring(0,line.substring(match1+15).length()-2));
							parameter_scale_factor[current_param] = scale_factor;
							System.out.println(parameter_name[current_param]+" scale factor is = "+parameter_scale_factor[current_param]);
						}
						
						match2 = line.indexOf("add_offset =");
						
						if(match2!=-1)
						{
							//System.System.out.println(line.substring(match1));
							//System.System.out.println(match1);
							//parameter_name = line.substring(2,match2-1);
							add_offset = Double.parseDouble(line.substring(match2+13).substring(0,line.substring(match2+13).length()-2));
							parameter_add_offset[current_param] = add_offset;
							System.out.println(parameter_name[current_param]+" add offset is = "+parameter_add_offset[current_param]);
							current_param++;
						}	
					}

					//code to get scale_factors and add_offsets starts for ends parameters here
					
					f = new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\testing1."+currenttime+".txt");
					br = new BufferedReader(new FileReader(f));
					StringBuilder parameter = new StringBuilder("");
					int sheetno = 1,rowno = 1,cellno = 0,totalnorows = 0;
					c = ' ';
					
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
						
						int found_at;
						
						for(found_at=0;found_at<str.length;found_at++)
						{
							if(parameter_name[found_at].equals(parameter.toString()))
							{
								break;
							}
						}
						
						if(found_at!=4)
						{
							scale_factor = parameter_scale_factor[found_at];
							add_offset = parameter_add_offset[found_at];
						}
						else
						{
							scale_factor = 1;
							add_offset = 0;
						}
						
						value = new StringBuilder("");
								
						while((c=(char)br.read())!=';')
						{
							while((c=(char)br.read())==' ' || c=='\n' || c==13)
							{}
									
							value.append(c);

							while((c=(char)br.read())!=',' && c!=' ')
							value.append(c);
						
							if(!value.toString().equals("_"))
							numericValue = Double.parseDouble(value.toString()) * scale_factor + add_offset;
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
					
					/*command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final & del /Q testing1."+currenttime+".txt");	
										
					process = Runtime.getRuntime().exec(command.toString());
							
					process.waitFor();*/
					
					//step 2 starts here
					
					FileOutputStream fos = new FileOutputStream(new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx"));
					workbook.write(fos);
					fos.close();
					System.out.println("FirstTest."+currenttime+".xlsx written successfully");
					
					f = new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx");
					FileInputStream fis = new FileInputStream(f);
					//Get the workbook instance for XLSX file 
					workbook = new XSSFWorkbook(fis);
					if(f.isFile() && f.exists())
					{
						System.out.println("FirstTest."+currenttime+".xlsx file open successfully.");
					}
					else
					{
						System.out.println("Error to open FirstTest."+currenttime+".xlsx file.");
					}
					
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
					row.createCell((short)cellno).setCellValue("longitude");
					cellno++;
					row.createCell((short)cellno).setCellFormula("longitude!A2");
					cellno++;
					row.createCell((short)cellno).setCellValue("latitude");
					cellno++;
					row.createCell((short)cellno).setCellFormula("latitude!A2");
					cellno++;
					
					cellno = 1;
					
					row = spreadsheet.createRow((short)rowno);	
					rowno++;
					
					int exists1=-1;
					int exists2=-1;
					
					for(int i=0;i<numberOfSheets;i++)
					{
						if(parameters[i].equals("u2"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("v2"))
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
						if(parameters[i].equals("u10"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("v10"))
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
						if(parameters[i].equals("u2"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("v2"))
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
						if(parameters[i].equals("u10"))
						{
							exists1 = i;
						}
							
						if(parameters[i].equals("v10"))
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
						if(parameters[i].equals("t2m"))
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
						if(parameters[i].equals("sp"))
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
						if(parameters[i].equals("latitude") || parameters[i].equals("longitude") || parameters[i].equals("time"))
						done[i] = 1;
					}
					//till here all intial headers for initial columns have been added
					
					for(int i=0;i<numberOfSheets;i++)
					{
						System.out.print("parameter "+parameters[i]+" = "+done[i]);
					}
					
					System.out.println();
					
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
						cellno = 1;
						row = spreadsheet.createRow((short)rowno);
						
						if(workbook.getSheet("u2")!=null && workbook.getSheet("v2")!=null)
						{
							row.createCell((short)cellno).setCellFormula("SQRT((u2!A"+rowno+" * u2!A"+rowno+") + (v2!A"+rowno+" * v2!A"+rowno+"))");
							cellno++;
						}
						if(workbook.getSheet("u10")!=null && workbook.getSheet("v10")!=null)
						{
							row.createCell((short)cellno).setCellFormula("SQRT((u10!A"+rowno+" * u10!A"+rowno+") + (v10!A"+rowno+" * v10!A"+rowno+"))");
							cellno++;
						}
						if(workbook.getSheet("U50M")!=null && workbook.getSheet("V50M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("SQRT((U50M!A"+rowno+" * U50M!A"+rowno+") + (V50M!A"+rowno+" * V50M!A"+rowno+"))");
							cellno++;
						}
						if(workbook.getSheet("u2")!=null && workbook.getSheet("v2")!=null)
						{
							row.createCell((short)cellno).setCellFormula("ROUND(DEGREES(ATAN((u2!A"+rowno+"/v2!A"+rowno+")))+(IF(v2!A"+rowno+">=0,180,IF((AND(u2!A"+rowno+">=0,v2!A"+rowno+"<0)),360,IF((AND(u2!A"+rowno+"<0,v2!A"+rowno+"<0)),0,9999)))),0)");
							cellno++;
						}
						if(workbook.getSheet("u10")!=null && workbook.getSheet("v10")!=null)
						{
							row.createCell((short)cellno).setCellFormula("ROUND(DEGREES(ATAN((u10!A"+rowno+"/v10!A"+rowno+")))+(IF(v10!A"+rowno+">=0,180,IF((AND(u10!A"+rowno+">=0,v10!A"+rowno+"<0)),360,IF((AND(u10!A"+rowno+"<0,v10!A"+rowno+"<0)),0,9999)))),0)");
							cellno++;
						}
						if(workbook.getSheet("U50M")!=null && workbook.getSheet("V50M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("ROUND(DEGREES(ATAN((U50M!A"+rowno+"/V50M!A"+rowno+")))+(IF(V50M!A"+rowno+">=0,180,IF((AND(U50M!A"+rowno+">=0,V50M!A"+rowno+"<0)),360,IF((AND(U50M!A"+rowno+"<0,V50M!A"+rowno+"<0)),0,9999)))),0)");
							cellno++;
						}
						if(workbook.getSheet("t2m")!=null)
						{
							row.createCell((short)cellno).setCellFormula("t2m!A"+rowno+" - 273");
							cellno++;
						}
						if(workbook.getSheet("T10M")!=null)
						{
							row.createCell((short)cellno).setCellFormula("T10M!A"+rowno+" - 273");
							cellno++;
						}
						if(workbook.getSheet("sp")!=null)
						{
							row.createCell((short)cellno).setCellFormula("sp!A"+rowno+"/100");
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
					fos = new FileOutputStream(new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx"));
					workbook.write(fos);
					fos.close();
					System.out.println("FirstTest."+currenttime+".xlsx written successfully");
					
					//code to copy spreadsheet named 'final' from 'FirstTest.'+currenttime+'.xlsx' into another excel file named 'FinalFirstTest.'+currenttime+'.xlsx'
					
						fis = new FileInputStream(new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\FirstTest."+currenttime+".xlsx"));
						
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
							
							if(rowno==0)
							cellno = 0;
							else
							cellno = 1;	
							
							//For each row, iterate through each columns
							Iterator <Cell> cellIterator = row.cellIterator();	
							FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();
							XSSFRow newrow = newsheet.createRow((short)rowno);
							
							while(cellIterator.hasNext()) {
								Cell cell = cellIterator.next();
								
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
						
						/*command = new StringBuilder("cmd /c cd C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final & del /Q FirstTest."+currenttime+".xlsx");	
										
						process = Runtime.getRuntime().exec(command.toString());
							
						process.waitFor();*/
						
						fos = new FileOutputStream(new File("C:\\Users\\Siddhanth\\Documents\\JspProjectDocuments\\parametersandstuff\\SomeFilesForERA\\"+lat+"_"+lon+"\\Final\\FinalFirstTest."+currenttime+".xlsx"));
						newworkbook.write(fos);
						fos.close();
						System.out.println("FinalFirstTest."+currenttime+".xlsx written successfully");
						
						test=0;
						
						for(int i=0;i<numberOfSheets;i++)
						{
								if(done[i]>1)
								{
									String node = lat+"_"+lon;
									
									/*	%>
									
									<script>
									alert("The file you are about to download has some parameters not used in any formula! Such parameters are simply appended at the end of the columns with formulas. After you download this excel file it will be deleted from the server. Click ok to download.");
									var loc="DownloadExcelFile.jsp?fileName=<%= finalexcelfile%>&currenttime=<%= currenttime %>&node=<%=node %>";
									window.location = loc;
									</script>
									
									<%	*/
									
									test=1;
									break;
								}
						}
	
						if(test==0)
						{
							String node = lat+"_"+lon;
							
							/*	%>
							
							<script>
							alert("After you download this excel file it will be deleted from the server. Click ok to download.");
							var loc="DownloadExcelFile.jsp?fileName=<%= finalexcelfile%>&currenttime=<%= currenttime %>&node=<%=node %>";
							window.location = loc;
							</script>
							
							<%	*/
						}
						
						System.out.println("Conversion successful");
				}
				catch(Exception e)
				{
					StringWriter sw = new StringWriter();
					PrintWriter pw = new PrintWriter(sw);
					e.printStackTrace(pw);
					System.out.println(sw.toString());
				}
		}
}
				
/*

	<!--<br><br>Your file is ready to be downloaded, click download!
	<form method="GET" action="DownloadExcelFile.jsp" target="dummyframe">
	<input name='fileName' value=<%= finalexcelfile %> type='text' readonly><br>
	<input name='currenttime' value=<%= currenttime %> type='text' readonly><br>
	<input name='submit' value='download' type='submit'>
	</form>
	<iframe width="0" height="0" border="0" name="dummyframe" id="dummyframe" style="border:none;">
	</iframe>-->
	
	

</body>
</html>`*/