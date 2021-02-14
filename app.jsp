Welcome to our Final-Project web site 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
    <head> 
        <title>Create table in mysql database using jsp By Yariv</title>
    </head> 
    <body bgcolor="#ffffcc">
        <form action="show_data.jsp" method="get">
            <TABLE style="background-color: #ECE5B6;" WIDTH="50%">
                <tr width="100%">
                    <td >Student Name</td>
                    <td ><input type="text" name="Name"></td>
                </tr>
                <tr>
                    <td width="20%">Stream</td>
                    <td width="25%"><input type="radio" name="stream" 
                        value="B.Tech.">B.Tech.</td>
                    <td width="30%"><input type="radio" name="stream" value="MCA" 
					    checked>MCA</td>
                    <td width="25%"><input type="radio" name="stream" value="MBA">
					    MBA</td>
                </tr>
                <tr>
                    <td>Branch</td>
                    <td><input type="radio" name="branch" value="CS" checked>
					    CS</td>
                    <td><input type="radio" name="branch" value="IT"> IT</td>
                    <td><input type="radio" name="branch" value="EC"> EC</td>
                </tr>
                <tr>
                    <td>Course Type</td>
                    <td><input type="radio" name="course" value="Regular" checked>
					    Regular</td>
                    <td><input type="radio" name="course" value="Correspondance">
					    Correspondance</td>
                    <td><input type="radio" name="course" value="Online"> Online</td>
                </tr>
				<tr><td></td><td></td>
				<td><input type="submit" name="submit" value="submit"></td></tr>
            </TABLE>
        </form>
    </body> 
</html>
