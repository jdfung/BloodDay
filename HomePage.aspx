<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="GroupProject.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main role="main">

      <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light" style="background-image: url('blood2.png'); background-repeat: no-repeat; background-position:center, center; background-size:70% 100%;">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal text-white">Blood Day</h1>
        <p class="lead font-weight-normal text-white">A blood donation campaign is an essential and beneficial way to help those in need.</p>
      </div>
      <div class="product-device shadow-sm d-none d-md-block"></div>
      <div class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
    </div>


      <div class="container marketing">
        <!-- Three columns of text below the carousel -->
        <div class="row justify-content-center d-flex">
          <div class="col">
            <img class="rounded-circle" src="register.png" alt="Generic placeholder image" width="140" height="140">
            <h2>Register to donate now!</h2>
            <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
            <p><a class="btn btn-success" href="addParticipants.aspx" role="button">Register »</a></p>
          </div><!-- /.col-lg-4 -->
          
          <div class="col">
            <img class="rounded-circle" src="checkEntry.png" alt="Generic placeholder image" width="140" height="140">
            <h2>View your appointment</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
            <p><a class="btn btn-primary" href="checkAppointment.aspx" role="button">View details »</a></p>
          </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->


        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">A donation of blood means a few minutes to you,  <span class="text-muted">but a lifetime for somebody else.</span></h2>
            <p class="lead">A blood donation campaign is an essential and beneficial way to help those in need. By donating blood, you are helping to save lives and make a difference in the world. There are many benefits to donating blood, such as helping to keep the blood supply safe and clean, providing lifesaving blood to those who need it, and reducing your risk of developing certain diseases.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 500px; height: 420px;" src="stock1.jpg" data-holder-rendered="true">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Your blood donation can give a  <span class="text-muted">precious smile to someone's face.</span></h2>
            <p class="lead">Donating blood is a simple and easy way to help others. It only takes a few minutes to donate, and it is a painless process. You can make a difference in someone’s life by donating blood.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 500px; height: 500px;" src="stock2.jpg" data-holder-rendered="true">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Your blood is precious: Donate, save a life  <span class="text-muted">& make it Divine.</span></h2>
            <p class="lead">Donating blood can provide lifesaving blood to those who need it. Every day, there are people who need blood transfusions to survive. By donating blood, you can help to save the lives of those who need it.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 500px; height: 400px;" src="stock3.jpg" data-holder-rendered="true">
          </div>
        </div>

        <hr class="featurette-divider">

      </div>

    </main>
</asp:Content>
