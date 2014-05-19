<%@ Page Title="" Language="C#" MasterPageFile="~/LibSys.master" AutoEventWireup="true" CodeFile="books.aspx.cs" Inherits="books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentNav" Runat="Server">
    <ul>
        <li><a href="Default.aspx">Home</a> </li>
        <li><a href="javascript:history.go(-1);">Back</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentMain" Runat="Server">
     <h2>Books Information</h2>

    <table class="tbl">
        <tr>
            <td colspan="2">
                <asp:Button ID="btnnew" CssClass="btnx" runat="server" Text="New" />
                <asp:Button ID="btnedit" CssClass="btnx" runat="server" Text="Edit" />
                <asp:Button ID="btnDelete" CssClass="btnx" runat="server" Text="Delete" />
                <asp:Button ID="btnSave" CssClass="btnx" runat="server" Text="Save" />
            </td>
        </tr>
        <tr>
            <td class="small"> Book ID </td>

            <td class="large">
                <input type="text" class="txt" id="txtid" name="txtid" required />
            </td>
        </tr>


        <tr>
            <td class="small">Title</td>

            <td class="large">
                <input type="text" class="txt" id="Title" name="Title" required />
            </td>
        </tr>
        
          <tr>
            <td class="small">AuthID</td>

            <td class="large">
                <input type="text" class="txt" id="AuthID" name="AuthID" required />
            </td>
        </tr>
          <tr>
            <td class="small">Publisher ID</td>

            <td class="large">
                <input type="text" class="txt" id="pubid" name="pubid" required />
            </td>
        </tr>

        <tr>
            <td class="small">Book Level</td>

            <td class="large">
                <input type="text" class="txt" id="level" name="level" required />
            </td>
        </tr>


        <tr>
            <td class="small">Chapters</td>

            <td class="large">
                <input type="text" class="txt" id="txtchapter" name="txtchapter" required />
            </td>
        </tr>


       

        <tr>
            <td class="small">Cellular</td>

            <td class="large">
                <input type="text" class="txt" id="Mobile" name="Mobile" required />
            </td>
        </tr>


        <tr>
            <td class="small">Edition</td>

            <td class="large">
                <input type="text" class="txt" id="Edition" name="Edition" required />
            </td>
        </tr>
       
           <tr>
            <td class="small">Pages</td>

            <td class="large">
                <input type="number"   class="txt" id="Pages" name="Pages" required />
            </td>
        </tr>
         <tr>
            <td class="small">Quantity</td>

            <td class="large">
                <input type="number"  class="txt" id="Quantity" name="Quantity" required />
            </td>
        </tr>
         <tr>
            <td class="small"> Shelf-No</td>

            <td class="large">
                <input type="number"  class="txt" id=" ShelfNo" name=" ShelfNo" required />
            </td>
        </tr>
         <tr>
            <td class="small">Language</td>

            <td class="large">
                <input type="text" class="txt" id="Language" name="Language" required />
            </td>
        </tr>
     
        <tr>
            <td class="mid"></td>

            <td class="large">
                <asp:Label ID="lblerr" CssClass="err" runat="server" Text="ALL FIELDS ARE REQUIRED"></asp:Label>
            </td>
        </tr>



    </table>
</asp:Content>

