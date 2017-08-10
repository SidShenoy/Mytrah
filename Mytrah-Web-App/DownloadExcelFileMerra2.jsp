<!DOCTYPE HTML> 
<html>
<body>
<%@ page import="java.io.*"%>
<%
		// import of java.io.* is needed for this to run independently.
		// reads input file from an absolute path
		String fileName = request.getParameter("fileName");
		String currenttime = request.getParameter("currenttime");
        String node = request.getParameter("node");
		//String locationOfWGET = "C:\\Users\\Siddhanth\\Documents\\JSPProjectDocuments\\parametersandstuff";
		String locationOfWGET = "D:\\Jos\\Soft\\apache-tomcat-8.0.33\\webapps\\Prerequisite-Tools";
		
		String filePath = locationOfWGET+"\\SomeFiles\\"+node+"\\Final\\" + fileName;
        File downloadFile = new File(filePath);
        FileInputStream inStream = new FileInputStream(downloadFile);
         
        // if you want to use a relative path to context root:
        String relativePath = getServletContext().getRealPath("");
        out.println("relativePath = " + relativePath);
         
        // obtains ServletContext
        ServletContext context = getServletContext();
         
        // gets MIME type of the file
        String mimeType = context.getMimeType(filePath);
        if (mimeType == null) {        
            // set to binary type if MIME mapping not found
            mimeType = "application/octet-stream";
        }
        out.println("MIME type: " + mimeType);
         
        // modifies response
        response.setContentType(mimeType);
        response.setContentLength((int) downloadFile.length());
         
        // forces download
        String headerKey = "Content-Disposition";
        String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
        response.setHeader(headerKey, headerValue);
        
        // obtains response's output stream
        OutputStream outStream = response.getOutputStream();
         
        byte[] buffer = new byte[4096];
        int bytesRead = -1;
         
        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
         
        inStream.close();
        outStream.close();
		
		StringBuilder command = new StringBuilder("cmd /c cd "+locationOfWGET+"\\SomeFiles\\"+node+"\\Final & del /Q FinalFirstTest."+currenttime+".xlsx");	
										
		Process process = Runtime.getRuntime().exec(command.toString());
							
		process.waitFor();
		
		
		
%>

</body>
</html>

		