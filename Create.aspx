<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Create" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <%--  <script>

        $(function () {
            $("#<%= txtDate.ClientID %>").datepicker();
    });
    </script>--%>
    <script>
        $(function () {
            $(".date").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });
    </script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <center><div class="container">
      <div class="section-heading title-black color-dark text-center">
                        <h2>Let's Create one!</h2>
                   
                    </div>
  


  


        <div >
                      <b>Name </b>                     
                      <asp:TextBox ID="TextBox1" Font-Size="Medium" CssClass="form-control form-group" Width="300px" ValidationGroup="v" Height="40px" placeholder="Name:"  runat="server"></asp:TextBox>  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="v" ControlToValidate="TextBox1" ForeColor="Red"  runat="server" ErrorMessage="* Fill all fields"></asp:RequiredFieldValidator>                     
                      </div>    
           <div >
                      <b>Date </b>                      
                      <asp:TextBox ID="TextBox2" Font-Size="Medium" CssClass="form-control form-group date"  Width="300px"  ValidationGroup="v" Height="40px" placeholder="Date:"  runat="server"></asp:TextBox>                       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="v" ControlToValidate="TextBox2" ForeColor="Red"  runat="server" ErrorMessage="* Fill all fields"></asp:RequiredFieldValidator>                     
                      
           </div>                    
         <div >
                      <b>start time</b>          
                      <asp:TextBox ID="txtstarttime" Font-Size="Medium" TextMode="Time"  ValidationGroup="v" CssClass="form-control form-group" Width="300px" Height="40px"  placeholder="Start time:" runat="server"></asp:TextBox>                       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="v" ControlToValidate="txtstarttime" ForeColor="Red"  runat="server" ErrorMessage="* Fill all fields"></asp:RequiredFieldValidator>                     
                   
                </div>   
                          </div>                    
         <div >
                       <b>End time </b>         
                      <asp:TextBox ID="txtendtime" Font-Size="Medium" TextMode="Time"  ValidationGroup="v" CssClass="form-control form-group" Width="300px" Height="40px"  placeholder="End time:" runat="server"></asp:TextBox>                       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="v" ControlToValidate="txtendtime" ForeColor="Red"  runat="server" ErrorMessage="* Fill all fields"></asp:RequiredFieldValidator>                     

                      </div>   
         <div >
                       <b>Location </b>                     
                      <asp:TextBox ID="TextBox4" Font-Size="Medium"  CssClass="form-control form-group"  ValidationGroup="v" Width="300px" Height="40px" placeholder="Location:"  runat="server"></asp:TextBox>                       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="v" ControlToValidate="TextBox4" ForeColor="Red"  runat="server" ErrorMessage="* Fill all fields"></asp:RequiredFieldValidator>                     

                      </div>   
     </div>
    




      





        <br />
         <div class="col-12 text-center">
                        <%--    <a href="#" title="More Schedule" class="loadmore-one-item btn-fill size-lg border-radius-5 color-yellow margin-t-50">login</a>--%>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  ValidationGroup="v" CssClass="btn btn-success btn-fill size-lg border-radius-5 color-yellow margin-t-50" Text="Create"></asp:Button>
                        </div>
                              
  <asp:Button ID="btnShowinfo" runat="server"  style="display:none" />

<asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowinfo" PopupControlID="pnlpopup0"
CancelControlID="dd" BackgroundCssClass="modalBackground">
</asp:ModalPopupExtender>
                                                        <asp:Panel ID="pnlpopup0" runat="server"  CssClass="responsivemodal"  Height="200px"  style="display:none">
                
                         
      <div class="responsivemodal lobibox lobibox-info animated-super-fast zoomIn" data-is-modal="true" >
            <div class="lobibox-header">
                <caption>
                    <span class="lobibox-title">Alert...!</span><span id="dd" runat="server" class="btn-close">×</span></caption> </div><div class="lobibox-body" style="height: 89.7667px;">
            <div class="lobibox-icon-wrapper"><i class="lobibox-icon fa fa-info-circle"></i></div><div class="lobibox-body-text-wrapper">               
                <span class="lobibox-body-text"> <asp:Label ForeColor="Black" Font-Bold="true" ID="lblmsg" runat="server" Text="Today You Have"></asp:Label>


                    <asp:Label ID="lblcount" runat="server" ForeColor="Green" Font-Bold="true" Text="Label"></asp:Label>     <asp:Label ID="Label1"  runat="server"  ForeColor="Black" Font-Bold="true" Text="Reminder"></asp:Label>


                </span>

                                                                                                  </div></div><div class="lobibox-footer text-center"> 
                                                                       <caption>
                                                                          <%--  <button id="Aside1" class="lobibox-btn lobibox-btn-default" data-type="okk">
                                                                             ok
                                                                            </button>--%>
                                                                          <asp:Button ID="Button2" CssClass="btn btn-success" OnClick="Button2_Click" runat="server" Text="View"></asp:Button>
                                                                        </caption>
                                                                    </div></div>

                                                        </asp:Panel>
   

</center>

</asp:Content>

