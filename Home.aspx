<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <center><div class="container">
      
  
        <div >
                                            
                      <asp:TextBox ID="TextBox1" Font-Size="Medium" CssClass="form-control form-group" Width="300px" Height="40px" placeholder="User:" runat="server"></asp:TextBox>                       
                      </div>    
           <div >
                                            
                      <asp:TextBox ID="TextBox2" Font-Size="Medium" CssClass="form-control form-group" Width="300px" Height="40px" placeholder="Key:" runat="server"></asp:TextBox>                       
                      </div>                    
        
     </div>
        <br />
         <div class="col-12 text-center">
                        <%--    <a href="#" title="More Schedule" class="loadmore-one-item btn-fill size-lg border-radius-5 color-yellow margin-t-50">login</a>--%>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-success btn-fill size-lg border-radius-5 color-yellow margin-t-50" Text="Login"></asp:Button>
                        </div>
            

</center>
    

</asp:Content>

