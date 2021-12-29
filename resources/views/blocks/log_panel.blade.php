<div class="log_container">
        <?php
        if($_COOKIE['user'] == '')
        ?>
        <div id="login">
            <a href="login.php"><img src="assets/iniciar-sesion.svg" title="Login" />Войти</a>
        </div>
        <div id="reg">
            <a href="reg.php" class="reg"><img src="assets/ana22dir.svg" title="Register" />Регистрация</a>
        </div>
        <?php else: ?>
        <div id="login">
            <a href="cabinet.php"><img src="assets/profile.svg" />Профиль</a>
        </div>
        <?php endif; ?>

    </div>
