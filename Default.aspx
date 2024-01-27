<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container text-center" > 
        <!---------------------TEXTBOX FOR INPUT STRING CODE STARTS HERE-------------------------------------------------------------------------->
        <div class="row">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter a string of integers separated by commas"></asp:Label>
            &nbsp;&nbsp;&nbsp;<br />
&nbsp;<asp:TextBox ID="inputString" runat="server" Width="328px" Height="30px" OnTextChanged="inputString_TextChanged"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="labelWarning" runat="server" ForeColor="#CC3300" Text="Please enter a string of numbers separated by commas" Visible="False"></asp:Label>
            <br />
            <br />
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Sort String" OnClick="Button1_Click" Height="31px" Width="156px" class="btn btn-primary" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Sorted string: "></asp:Label>
               &nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="outputString" runat="server" Height="30px" ReadOnly="True" Width="299px" ForeColor="#006600" OnTextChanged="outputString_TextChanged"></asp:TextBox>
            <br />
        </div>
        <!---------------------TEXTBOX FOR SORTED STRING CODE STARTS HERE-------------------------------------------------------------------------->
    </div>

</asp:Content>
