<?php echo form_open('users/login'); ?>

<div class="w-50 mx-auto">
	<h1 class="text-center font-weight-bold text-info text-uppercase mt-5 mb-5"><?= $title; ?></h1>

	<div class="form-group">
		<small><label class="text-uppercase font-weight-bold">username</label></small>
		<input type="text" name="username" class="form-control" placeholder="Enter Username" required autofocus>
	</div>

	<div class="form-group">
		<small><label class="text-uppercase font-weight-bold">password</label></small>
		<input type="password" name="password" class="form-control" placeholder="Enter Password" required autofocus>
	</div>

	<div class="row justify-content-center mt-5 mb-4">
		<div class="form-check">
  			<input class="form-check-input" type="checkbox" value="">
  			<label class="form-check-label ml-2">Remember Me</label>
		</div>
	</div>

	<div class="row justify-content-center">
		<button type="submit" class="btn btn-info px-5 text-uppercase">log in</button>
	</div>
</form>
	<div class="mt-5">
		<p class="text-muted text-center">New to <span class="text-uppercase"><span class="text-info">trio</span>academy?</span> <a href="<?php echo base_url(); ?>users/register" class="text-info text-uppercase font-weight-bold">sign up</a></p>
	</div>


</div>


