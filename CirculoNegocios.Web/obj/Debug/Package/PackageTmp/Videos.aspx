<%@ Page Title="" Language="C#" MasterPageFile="~/Circulo.Master" AutoEventWireup="true"
    CodeBehind="Videos.aspx.cs" Inherits="CirculoNegocios.Web.Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="video-js.css" rel="stylesheet" type="text/css">
    <!-- video.js must be in the <head> for older IEs to work. -->
    <script src="video.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    'playMedia': true,
'playMedia': true,
                'progressMedia': true,
                'timerMedia': true,
                'fullscreenMedia': true,
                'autoPlay': false
                'progressMedia': true,
                'timerMedia': true,
                'fullscreenMedia': true,
                'autoPlay': false--%>
    <div class="col-md-12 column">
        <div class="col-lg-8">
            <video id="example_video_1" class="video-js vjs-default-skin" controls preload="none"
                data-setup="{}">
    <source src="http://localhost:1034/Videos/VID-20140413-WA0002.mp4" type='video/mp4' />
    
    <track kind="captions" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
    <track kind="subtitles" src="demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
    <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
  </video>
        </div>
    </div>
    <div class="col-md-4 column">
    </div>
</asp:Content>
