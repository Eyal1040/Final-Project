<%@ page contentType="text/html" %>

<html>
    <h1>JSP Calculator</h1> 
    <hr>
    <head>
        <script type="text/javascript">
            function checkOperand(){
                if(frmCal.num1.value==""  frmCal.num2.value==""){
                    window.alert("Operand Can Not be Empty.");

                    return false; 
                }

                if(Math.round(frmCal.num1.value)!=frmCal.num1.value  Math.round(frmCal.num2.value)!=frmCal.num2.value ){
                     window.alert("Operand must be type of Number.");

                     return false; 
                 }
            }
        </script>
    </head>
<body>
        <%
            // Retrieve the first operand
            String sNum1= request.getParameter("num1"); 

            // Retrieve the second operand 
            String sNum2= request.getParameter("num2"); 

            // Retrieve the Operator 
            String sOperator = request.getParameter("operator"); 

            int result = 0; 
            int num1 = 0; 
            int num2 = 0;

            if(sNum1!=null && sNum2!=null && sOperator!=null){
                num1 = Integer.parseInt(sNum1); 
                num2 = Integer.parseInt(sNum2); 

                if(sOperator.equals("+")){
                    result = num1 + num2; 
                }else if(sOperator.equals("-")){
                    result = num1 - num2;
                }else if(sOperator.equals("*")){
                    result = num1 * num2;
                }else{
                    result = num1 / num2;
                }
            }

        %>

        <form name="frmCal" action="MyCalculator.jsp">
            First Operand: <input type="text" name="num1" size="4" value="<%=num1%>"> <br>
            <select name="operator">
                <option value=+>+</option>
                <option value=->-</option>
                <option value=></option>
                <option value=/>/</option>
            </select>
            <br>
            Second Operand: <input type="text" name="num2" size="4" value="<%=num2%>"> <br>
            <input type="submit" value="=" onclick="return checkOperand();">

        </form>
        <hr>
        Result = <%= result %>
    </body>

</html>
