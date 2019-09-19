<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Owiny_Ayorech_CPRG214_Lab1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%-- Title and required external stylesheets and scripts --%>
    <title>Temperature Converter</title>
    <link href="css/styles.css" rel="stylesheet" />
    <link href="Content/bootswatch/pulse/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/popper.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Main container for all objects --%>
        <div class="container">
            <%-- Header class holds on page title --%>
            <header class="jumbotron">
                <h1 class="text-center">Temperature Converter</h1>
            </header>
            <%-- Container that holds the main program objects, with nested sub containers to hold objects --%>
            <div class="container-fluid row d-inline-block">
                <div class="container">
                    <div class="box container-fluid align-items-center">
                        <%-- Box row used to keep items inline --%>
                        <div class="box-row">
                            <%-- first box cell holds asp temperature image --%>
                            <div class="box-cell box1">
                                <asp:Image ID="Image1" runat="server"
                                    ImageUrl="~/images/temperature-display-clipart-7.jpg" />
                            </div>
                            <%-- second box cell holds table that contains all the controls to interact with application --%>
                            <div class="box-cell box2">
                                <table>
                                    <%-- row that contains titles for drop downs --%>
                                    <tr>
                                        <td class="tableEdits2">From:</td>
                                        <td class="tableEdits1">To:</td>
                                        <td class="tableEdits3"></td>
                                    </tr>
                                    <%-- row containing drop downs --%>
                                    <tr>
                                        <td class="tableEdits2">
                                            <asp:DropDownList ID="FromDropDownList" runat="server" Font-Bold="True">
                                                <asp:ListItem>Celsius</asp:ListItem>
                                                <asp:ListItem>Fahrenheit</asp:ListItem>
                                                <asp:ListItem>Kelvin</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="tableEdits1">
                                            <asp:DropDownList ID="ToDropDownList" runat="server" Font-Bold="True">
                                                <asp:ListItem>Fahrenheit</asp:ListItem>
                                                <asp:ListItem>Celsius</asp:ListItem>
                                                <asp:ListItem>Kelvin</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="tableEdits3">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="InputTextBox"
                                                ErrorMessage="A value must be entered to convert" Font-Bold="True"
                                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <%-- input label and textbox row --%>
                                    <tr>
                                        <td class="tableEdits2">
                                            <asp:Label ID="InputLabel" runat="server" Text="Input Temperature"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="InputTextBox" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="tableEdits3">
                                            <asp:RangeValidator ID="RangeValidator1" runat="server"
                                                ErrorMessage="Valid input range between -1000 and 1000"
                                                ControlToValidate="InputTextBox" Font-Bold="True" ForeColor="Red"
                                                MaximumValue="1000" MinimumValue="-1000" Type="Double"></asp:RangeValidator></td>
                                    </tr>
                                    <%-- output label and textbox row --%>
                                    <tr>
                                        <td class="tableEdits2">
                                            <asp:Label ID="OutputLabel" runat="server" Text="Output Temperature"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="OutputTextBox" runat="server" BackColor="#A0CE82"
                                                ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="tableEdits3"></td>
                                    </tr>
                                    <%-- convert and clear button row --%>
                                    <tr>
                                        <td class="tableEdits2">
                                            <asp:Button ID="ConvertButton" runat="server" Text="Convert"
                                                OnClick="ConvertButton_Click" CssClass="btn-info"/>
                                        </td>
                                        <td>
                                            <asp:Button ID="ClearButton" runat="server" Text="Clear" Height="33px"
                                                OnClick="ClearButton_Click" Width="83px" CausesValidation="False" CssClass="btn-info" />
                                        </td>
                                        <td class="tableEdits3"></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
