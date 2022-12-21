<%@ page import="data.DataFromTable" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" src="<%= request.getContextPath() %>/js/valid.js"></script>
    <link rel="stylesheet" href="styles/stylesheet/stylesheet_common.css"/>
    <link rel="stylesheet" href="styles/stylesheet/stylesheet_index_page.css"/>
    <link rel="stylesheet" href="styles/dark_stylesheet/stylesheet_index_page_dark.css"/>
    <title>First lab</title>
    <meta charset="utf-8"/>
</head>
<%
    session = request.getSession();
    boolean auth = false;
    if (session.getAttribute("auth") != null) {
        auth = (boolean) session.getAttribute("auth");
    }
    String prefix = "";
    String src = "images/img_hamster.png";
    if (session.getAttribute("color") != null) {
        ArrayList<Boolean> arrayList = (ArrayList<Boolean>) session.getAttribute("color");
        if (arrayList.get(arrayList.size() - 1)) {
            prefix = "dark-";
            src = "images/img_hamster_dark.png";
        }
    }
%>
<body class="<%=prefix%>body">
<table id="main-table">
    <tr>
        <td>
            <table id="head-table">
                <tr>
                    <td>
                        <table id="name-table" class="<%=prefix%>name-table">
                            <tr>
                                <td>Тройникова Вероника Дмитриевна, группа Р3233</td>
                                <td>
                                    <button class="button" id="changeColor">
                                        сменить тему
                                    </button>
                                    <input id="auth" name="auth" type="hidden" value="<%=auth%>"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table id="variant-table" class="<%=prefix%>variant-table">
                            <tr>
                                <td>
                                    <div>Вариант 33333</div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <table id="body-table" class="<%=prefix%>body-table">
                <tr class="background-with-<%=prefix%>shadow" id="background-tr">
                    <td>
                        <table class="<%=prefix%>background" id="background-table">
                            <tr>
                                <td>
                                    <div id="svg-picture">
                                        <svg id="svg" width="210" height="210" xmlns="http://www.w3.org/2000/svg">
                                            <polygon points="180,100 100,140 100,100"
                                                     class="<%=prefix%>svg-figure-color"
                                                     stroke-width="2"></polygon>
                                            <polygon points="100,20 180,20 180,100 100,100"
                                                     class="<%=prefix%>svg-figure-color"
                                                     stroke-width="2"></polygon>
                                            <path d="M100,100 v-80 a80,80 0 0,0-80,80z"
                                                  class="<%=prefix%>svg-figure-color"
                                                  stroke-width="2"></path>
                                            <line x1="100" y1="0" x2="100" y2="200" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="0" y1="100" x2="200" y2="100" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="97" y1="60" x2="103" y2="60" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="97" y1="20" x2="103" y2="20" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="97" y1="140" x2="103" y2="140" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="97" y1="180" x2="103" y2="180" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="60" y1="97" x2="60" y2="103" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="20" y1="97" x2="20" y2="103" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="140" y1="97" x2="140" y2="103" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="180" y1="97" x2="180" y2="103" stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="100" y1="0" x2="95" y2=10 stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="100" y1="0" x2="105" y2=10 stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="200" y1="100" x2="190" y2=105 stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <line x1="200" y1="100" x2="190" y2=95 stroke-width="2"
                                                  class="<%=prefix%>svg-line-color"></line>
                                            <text x="30" y="92" font-size="15" class="<%=prefix%>svg-text">-R/2</text>
                                            <text x="6" y="92" font-size="15" class="<%=prefix%>svg-text">-R</text>
                                            <text x="107" y="30" font-size="15" class="<%=prefix%>svg-text">R</text>
                                            <text x="107" y="70" font-size="15" class="<%=prefix%>svg-text">R/2</text>
                                            <text x="110" y="10" font-size="15" class="<%=prefix%>svg-text">y</text>
                                            <text x="130" y="92" font-size="15" class="<%=prefix%>svg-text">R/2</text>
                                            <text x="170" y="92" font-size="15" class="<%=prefix%>svg-text">R</text>
                                            <text x="190" y="92" font-size="15" class="<%=prefix%>svg-text">x</text>
                                            <text x="107" y="140" font-size="15" class="<%=prefix%>svg-text">-R/2</text>
                                            <text x="107" y="180" font-size="15" class="<%=prefix%>svg-text">-R</text>
                                            <%
                                                List<DataFromTable> arrayList;
                                                if (session.getAttribute("resultData") != null) {
                                                    arrayList = (List<DataFromTable>) session.getAttribute("resultData");
                                                    double r = arrayList.get(arrayList.size() - 1).getR();
                                                    for (DataFromTable dataFromTable : arrayList) {
                                                        String classCoord = prefix + "coord";
                                                        if (dataFromTable.getR() != r) classCoord = "old-coord";
                                            %>
                                            <circle class="<%=classCoord%>" r="3"
                                                    cx="<%=80 * dataFromTable.getX()/r + 100%>"
                                                    cy="<%=-80 * dataFromTable.getY()/r + 100%>"
                                                    data-x="<%=dataFromTable.getX()%>"
                                                    data-y="<%=dataFromTable.getY()%>"
                                                    data-r="<%=dataFromTable.getR()%>">
                                            </circle>
                                            <%
                                                    }
                                                }
                                            %>
                                        </svg>
                                    </div>
                                </td>
                                <td>
                                    <img id="imagine3" class="<%=prefix%>imagine3" src="<%=src%>" alt="Милый хомячок"/>
                                </td>
                                <%
                                    if
                                    (
                                            session
                                                    .
                                                            getAttribute
                                                                    (
                                                                            "resultData"
                                                                    )
                                                    !=
                                                    null
                                    ) {
                                        arrayList
                                                =
                                                (
                                                        List
                                                                <
                                                                        DataFromTable
                                                                        >
                                                        )
                                                        session
                                                                .
                                                                        getAttribute
                                                                                (
                                                                                        "resultData"
                                                                                )
                                        ;
                                    } else
                                        arrayList
                                                =
                                                new
                                                        ArrayList
                                                                <
                                                                        >
                                                        (
                                                        )
                                                ;
                                %>
                                <td rowspan="2" class="<%=prefix%>background" id="result-td">
                                    <div id="result-div">
                                        <jsp:include page="/table.jsp"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <%
                                    String
                                            x
                                            =
                                            "";
                                    double
                                            y
                                            =
                                            -
                                                    2.0;
                                    double
                                            r
                                            =
                                            1;
                                    if
                                    (
                                            arrayList
                                                    .
                                                            size
                                                                    (
                                                                    )
                                                    >
                                                    0
                                    ) {
                                        DataFromTable
                                                result
                                                =
                                                arrayList
                                                        .
                                                                get
                                                                        (
                                                                                arrayList
                                                                                        .
                                                                                                size
                                                                                                        (
                                                                                                        )
                                                                                        -
                                                                                        1
                                                                        );
                                        x
                                                =
                                                String
                                                        .
                                                                valueOf
                                                                        (
                                                                                result
                                                                                        .
                                                                                                getX
                                                                                                        (
                                                                                                        )
                                                                        )
                                        ;
                                        y
                                                =
                                                result
                                                        .
                                                                getY
                                                                        (
                                                                        )
                                        ;
                                        r
                                                =
                                                result
                                                        .
                                                                getR
                                                                        (
                                                                        )
                                        ;
                                    }

                                %>
                                <td colspan="2">
                                    <table id="numbers-table" class="<%=prefix%>background">
                                        <tr>
                                            <td>X:</td>
                                            <td>
                                                <input type="text" id="inputX" maxlength="17" autocomplete="off"
                                                       placeholder="Введите число: (-5; 5)" value="<%=x%>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Y:</td>
                                            <td><select size="1" id="selectY">
                                                <% List
                                                        <
                                                                Double
                                                                >
                                                        arrayY
                                                        =
                                                        Arrays
                                                                .
                                                                        asList
                                                                                (
                                                                                        -
                                                                                                2.0
                                                                                        ,
                                                                                        -
                                                                                                1.5
                                                                                        ,
                                                                                        -
                                                                                                1.0
                                                                                        ,
                                                                                        -
                                                                                                0.5
                                                                                        ,
                                                                                        -
                                                                                                0d
                                                                                        ,
                                                                                        0.5
                                                                                        ,
                                                                                        1.0
                                                                                        ,
                                                                                        1.5
                                                                                        ,
                                                                                        2.0
                                                                                );
                                                    for
                                                    (
                                                            double
                                                                    value
                                                            :
                                                            arrayY
                                                    ) {
                                                        if
                                                        (
                                                                y
                                                                        ==
                                                                        value
                                                        ) {%>
                                                <option value="<%=value%>" selected><%=value%>
                                                </option>
                                                <%
                                                } else {%>
                                                <option value="<%=value%>"><%=value%>
                                                </option>
                                                <%
                                                        }
                                                    }
                                                %>
                                            </select>
                                            </td>
                                        </tr>
                                        <tr class="numbers">
                                            <td>R:</td>
                                            <td>
                                                <table id="r-table">
                                                    <tr>
                                                        <% List
                                                                <
                                                                        Double
                                                                        >
                                                                arrayR
                                                                =
                                                                Arrays
                                                                        .
                                                                                asList
                                                                                        (
                                                                                                1.0
                                                                                                ,
                                                                                                1.5
                                                                                                ,
                                                                                                2.0
                                                                                                ,
                                                                                                2.5
                                                                                                ,
                                                                                                3.0
                                                                                        );
                                                            for
                                                            (
                                                                    double
                                                                            value
                                                                    :
                                                                    arrayR
                                                            ) {
                                                                if
                                                                (
                                                                        r
                                                                                ==
                                                                                value
                                                                ) {%>
                                                        <td>
                                                            <label> <input name="rCheckBox" id="defaultBox"
                                                                           type="checkbox"
                                                                           value="<%=value%>"
                                                                           checked>
                                                                <p><%=value%>
                                                                </p>
                                                            </label>
                                                        </td>
                                                        <%
                                                        } else {
                                                        %>
                                                        <td>
                                                            <label>
                                                                <input name="rCheckBox" type="checkbox"
                                                                       value="<%=value%>">
                                                                <p><%=value%>
                                                                </p>
                                                            </label>
                                                        </td>
                                                        <%
                                                                }
                                                            }
                                                        %>
                                                        <td colspan="2">
                                                            <button class="button" id="submit">
                                                                результат
                                                            </button>
                                                        </td>
                                                        <td colspan="3">
                                                            <button class="button" id="reset">
                                                                очистить
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
