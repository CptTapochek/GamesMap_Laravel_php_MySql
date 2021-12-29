@section('footer')
<footer class="footer">
    <div class="copy ">Copyright © @php echo date("Y"); @endphp Официальный сайт TorrentMap.<br />
        Администрация не несет ответственности за содержание материала.</div>
    <a href="{{route('disclaimer')}}" target="_blank">ПРАВООБЛАДАТЕЛЯМ</a>
    <div class="soc_btn">
        <a href="#" target="_blank"><img src="assets/facebook%20(1).svg" /></a>
        <a href="#" target="_blank"><img src="assets/youtube.svg" /></a>
        <a href="#" target="_blank"><img src="assets/vk-reproductor.svg" /></a>
    </div>
</footer>
