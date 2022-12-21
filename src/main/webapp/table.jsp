<%@ page import="data.DataFromTable" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="styles/stylesheet/stylesheet_table.css"/>
<link rel="stylesheet" href="styles/dark_stylesheet/stylesheet_table_dark.css"/>
<table id="result-table" class="result-style">
    <tr>
        <th id="real-time" class="result-style">Текущее время</th>
        <th id="time" class="result-style">Время исполнения</th>
        <th id="X" class="result-style">X</th>
        <th id="Y" class="result-style">Y</th>
        <th id="R" class="result-style">R</th>
        <th id="flag" class="result-style">Результат</th>
    </tr>
    <%
        List<DataFromTable> arrayList;
        if (session.getAttribute("resultData") != null) {
            arrayList = (List<DataFromTable>) session.getAttribute("resultData");
            for (DataFromTable dataFromTable : arrayList) {
    %>
    <tr>
        <td><%=dataFromTable.getTime()%>
        </td>
        <td><%=dataFromTable.getScripTime()%>
        </td>
        <td><%=dataFromTable.getX()%>
        </td>
        <td><%=dataFromTable.getY()%>
        </td>
        <td><%=dataFromTable.getR()%>
        </td>
        <td><%=dataFromTable.getAnswer()%>
        </td>
    </tr>
    <%
            }
        } else arrayList = new ArrayList<>();
    %>
</table>
