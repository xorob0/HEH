<!DOCTYPE html>
<html>

<?php
	session_start();
	require_once('assets/php/modele/show.php');
	require_once('assets/php/modele/idCheck.php');
	include('template.php');
	include('template_settings.php');
?>
                <div class="d-flex flex-column flex-fill" style="padding:10px;">
                    <h2 class="justify-content-center">Settings</h2>
                    <h3>Change password</h3>
                    <form>
                        <div class="d-flex"></div>
                    </form>
                    <form method="post" action="assets/php/changepwd.php">
                        <div class="form-group"><input class="form-control" type="password" name="oldpassword" placeholder="Old password"></div>
                        <div class="form-group"><input class="form-control" type="password" name="password" placeholder="New Password"></div>
                        <div class="form-group"><input class="form-control" type="password" name="password-repeat" placeholder="New password (repeat)"></div>
                        <div class="form-group"><button class="btn btn-primary btn-block" type="submit" action="assets/php/changepwd.php">Change</button></div>
                    </form>
                    <h3>Delete account</h3>
                    <form action="assets/php/deleteaccount.php" method="post">
                        <div class="form-group"><input class="form-control" type="password" name="currentpassword" placeholder="Current password"></div>
                        <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background-color:rgb(255,0,0);">Delete this account</button></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
</body>

</html>