<%@ Page Title="" Language="C#" MasterPageFile="~/Login.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
                    <div class="section-heading title-black color-dark text-center">
                        <h2>My Reminder's</h2>
                     <%--   <p>p tag</p>--%>
                    </div>

    <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnEditCommand="DataList1_EditCommand" OnItemCommand="DataList1_ItemCommand" OnUpdateCommand="DataList1_UpdateCommand" DataKeyField="id">
        <EditItemTemplate>
            <br />
          
                      
        <div class="table-responsive">
                   <%-- <table class="table table-striped schedule-layout1">
                            <tbody class="menu-list">

                                  <tr class="menu-item">
                                    <th >
                                        <div class="day-number">--%>
                                   <asp:TextBox ID="txtdate" BorderStyle="Solid" BorderColor="#8cc63e" BorderWidth="3px" runat="server" Text='<%# Eval("edate") %>' Width="100px"></asp:TextBox>
                                  
                                  
<%--                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">--%>
                            <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" BorderColor="#8cc63e" BorderWidth="3px" Text='<%# Eval("ename") %>'></asp:TextBox>           
                                   <%--     </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>--%>
                                           <asp:TextBox ID="txtstarttime" BorderStyle="Solid" BorderColor="#8cc63e" BorderWidth="3px" runat="server" Width="100px" Text='<%# Eval("starttime") %>'></asp:TextBox>
 -  <asp:TextBox ID="txtendtime" runat="server" BorderStyle="Solid" BorderColor="#8cc63e" BorderWidth="3px" Text='<%# Eval("endtime") %>'></asp:TextBox>
                                     <%--   </div>
                                    </td>
                                    <td>--%>
                                       <%-- <ul class="schedule-speaker">--%>

    <asp:TextBox ID="txtloc" runat="server" BorderStyle="Solid" BorderColor="#8cc63e" BorderWidth="3px" Width="100px" Text='<%# Eval("elocation") %>'></asp:TextBox>

                                        <asp:LinkButton ID="lnkupdate" runat="server" ForeColor="Green" CommandName="update">Update</asp:LinkButton> 
            |||
                                        <asp:LinkButton ID="lnkcancel" runat="server" ForeColor="Black"  CommandName="cancel">Cancel</asp:LinkButton>                                                       
                                          
<%--                                    <asp:LinkButton ID="LinkButton1" class="delete " runat="server" CommandName="remove" CommandArgument='<%# Bind("id") %>'>Remove</asp:LinkButton>--%>
                                         <%--   <li>
                                                <div class="speaker-img-tooltip" data-tips="Daizy Chirs">
                                                    <img src="img/speaker/speaker1.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="James Morgan">
                                                    <img src="img/speaker/speaker2.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Carolin Rose">
                                                    <img src="img/speaker/speaker3.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>--%>
                                       <%-- </ul>
                                    </td>
                                 </tr>
                                <br />
                                </tbody>
                            </table>--%>
       


        
        </EditItemTemplate>
        <ItemTemplate>

            
                    <div class="table-responsive">
                        <table class="table table-striped schedule-layout1">
                            <tbody class="menu-list">

                                  <tr class="menu-item">
                                    <th style="width:200px">
                                        <div class="day-number">
                                            <asp:Label ID="lbldate" runat="server" Text='<%# Eval("edate") %>'></asp:Label></div>
                                <%--        <div class="schedule-date">
                                            <asp:Label ID="lblmonth" runat="server" Text='<%# Eval("edate") %>'></asp:Label></div>--%>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">
                                                <asp:Label ID="lbleventname" runat="server" Text='<%# Eval("ename") %>'></asp:Label></a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>
                                            <asp:Label ID="lblstarttime" runat="server" Text='<%# Eval("starttime") %>'></asp:Label> - <asp:Label ID="lblendtime" runat="server" Text='<%# Eval("endtime") %>'></asp:Label>
                                        </div>
                                    </td>
                                    <td>
                                       <%-- <ul class="schedule-speaker">--%>

                                             <asp:Label ID="Label1" runat="server" Font-Bold="true" Text='<%# Eval("elocation") %>'></asp:Label>
                                      <br /><br />
                                          <asp:ImageButton ID="ImageButton1" runat="server"  ToolTip="click To Edit" CommandName="edit" ImageUrl="edit.png" Width="32" Height="32" />
                                                             <%--    <asp:LinkButton ID="lnkEdit" runat="server" Font-Size="Larger"  ToolTip="click To Edit" CommandName="edit"> Edit </asp:LinkButton>--%>
                                          
                                    <%--<asp:LinkButton ID="LinkButton1" class="delete " runat="server" CommandName="remove" ForeColor="Red" CommandArgument='<%# Bind("id") %>'>Delete</asp:LinkButton>--%>
                                         <asp:ImageButton ID="ImageButton2" runat="server" CommandName="delete" CommandArgument='<%# Bind("id") %>' ToolTip="click To Delete" ImageUrl="del.png" Width="32" Height="32" OnClientClick="return confirm('Are you certain you want to delete this?');"/>
                                         <%--   <li>
                                                <div class="speaker-img-tooltip" data-tips="Daizy Chirs">
                                                    <img src="img/speaker/speaker1.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="James Morgan">
                                                    <img src="img/speaker/speaker2.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Carolin Rose">
                                                    <img src="img/speaker/speaker3.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>--%>
                                        </ul>
                                    </td>
                                 </tr>
                                <br />
                                </tbody>
                            </table>
       </ItemTemplate>
                    </asp:DataList>










   

                <%--    <div class="table-responsive">
                        <table class="table table-striped schedule-layout1">
                            <tbody class="menu-list">
                                <tr class="menu-item">
                                    <th>
                                        <div class="day-number">Day - 01</div>
                                        <div class="schedule-date">17th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Introduction Business</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>08:00 - 09:30 AM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Daizy Chirs">
                                                    <img src="img/speaker/speaker1.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="James Morgan">
                                                    <img src="img/speaker/speaker2.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Carolin Rose">
                                                    <img src="img/speaker/speaker3.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item">
                                    <th>
                                        <div class="day-number">Day - 02</div>
                                        <div class="schedule-date">19th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Marketing Strategy</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>09:00 - 10:30 AM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Mark Willy">
                                                    <img src="img/speaker/speaker4.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Steve John">
                                                    <img src="img/speaker/speaker5.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item">
                                    <th>
                                        <div class="day-number">Day - 03</div>
                                        <div class="schedule-date">20th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Digital Marketing Theory</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>10:30 - 11:30 AM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Ayrin Dina">
                                                    <img src="img/speaker/speaker6.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Cristian Zozo">
                                                    <img src="img/speaker/speaker7.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Lara Quize">
                                                    <img src="img/speaker/speaker8.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item">
                                    <th>
                                        <div class="day-number">Day - 04</div>
                                        <div class="schedule-date">24th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Mass Marketing</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>12:00 - 01:30 PM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Daizy Chirs">
                                                    <img src="img/speaker/speaker1.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="James Morgan">
                                                    <img src="img/speaker/speaker2.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Carolin Rose">
                                                    <img src="img/speaker/speaker3.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item">
                                    <th>
                                        <div class="day-number">Day - 05</div>
                                        <div class="schedule-date">25th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Marketing Workshop</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>02:00 - 03:30 PM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Mark Willy">
                                                    <img src="img/speaker/speaker4.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Steve John">
                                                    <img src="img/speaker/speaker5.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item hidden">
                                    <th>
                                        <div class="day-number">Day - 01</div>
                                        <div class="schedule-date">17th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Introduction Business</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>08:00 - 09:30 AM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Daizy Chirs">
                                                    <img src="img/speaker/speaker1.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="James Morgan">
                                                    <img src="img/speaker/speaker2.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Carolin Rose">
                                                    <img src="img/speaker/speaker3.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item hidden">
                                    <th>
                                        <div class="day-number">Day - 02</div>
                                        <div class="schedule-date">19th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Marketing Strategy</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>09:00 - 10:30 AM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Mark Willy">
                                                    <img src="img/speaker/speaker4.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Steve John">
                                                    <img src="img/speaker/speaker5.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item hidden">
                                    <th>
                                        <div class="day-number">Day - 03</div>
                                        <div class="schedule-date">20th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Digital Marketing Theory</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>10:30 - 11:30 AM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Ayrin Dina">
                                                    <img src="img/speaker/speaker6.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Cristian Zozo">
                                                    <img src="img/speaker/speaker7.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Lara Quize">
                                                    <img src="img/speaker/speaker8.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item hidden">
                                    <th>
                                        <div class="day-number">Day - 04</div>
                                        <div class="schedule-date">24th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Mass Marketing</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>12:00 - 01:30 PM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Daizy Chirs">
                                                    <img src="img/speaker/speaker1.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="James Morgan">
                                                    <img src="img/speaker/speaker2.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Carolin Rose">
                                                    <img src="img/speaker/speaker3.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr class="menu-item hidden">
                                    <th>
                                        <div class="day-number">Day - 05</div>
                                        <div class="schedule-date">25th Oct</div>
                                    </th>
                                    <td>
                                        <div class="schedule-title">
                                            <a href="single-event.html">Marketing Workshop</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="schedule-time">
                                            <i class="fa fa-clock-o" aria-hidden="true"></i>02:00 - 03:30 PM
                                        </div>
                                    </td>
                                    <td>
                                        <ul class="schedule-speaker">
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Mark Willy">
                                                    <img src="img/speaker/speaker4.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                            <li>
                                                <div class="speaker-img-tooltip" data-tips="Steve John">
                                                    <img src="img/speaker/speaker5.png" alt="schedule" class="rounded-circle">
                                                </div>
                                            </li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>--%>
<%--  <div class="row">
                        <div class="col-12 text-center">
                            <a href="#" title="More Schedule" class="loadmore-one-item btn-fill size-lg border-radius-5 color-yellow margin-t-50">More Schedule</a>
                        </div>
                    </div>--%>

</asp:Content>

