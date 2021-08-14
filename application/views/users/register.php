

<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>

	<div class="w-50 mx-auto">
			<h1 class="text-center font-weight-bold text-info text-uppercase  mt-5"><?= $title; ?></h1>

			<div class="form-group">
				<small><label class="text-uppercase font-weight-bold">Name</label></small>
				<input type="text" name="name" class="form-control rounded" placeholder="Name">
			</div>

			<div class="form-group">
				<small><label class="text-uppercase font-weight-bold">email</label></small>
				<input type="email" name="email" class="form-control" placeholder="Email">
			</div>

			<div class="form-group">
				<small><label class="text-uppercase font-weight-bold">username</label></small>
				<input type="text" name="username" class="form-control" placeholder="Username">
			</div>

			<div class="form-group">
				<small><label class="text-uppercase font-weight-bold">password</label></small>
				<input type="password" name="password" class="form-control" placeholder="Password">
			</div>

			<div class="form-group">
				<small><label class="text-uppercase font-weight-bold">confirm password</label></small>
				<input type="password" name="password2" class="form-control" placeholder="Confirm Password">
			</div>

			<div class="row justify-content-center">
				<button type="submit" class="btn btn-info px-5 text-uppercase">sign up</button>
			</div>

			<div class="mt-5">
				<p class="text-muted text-center">Already on <span class="text-uppercase"><span class="text-info">trio</span>academy?</span> <a href="<?php echo base_url(); ?>users/login"class="text-info text-uppercase font-weight-bold">login</a></p>
			</div>


	</div>		

<?php echo form_close(); ?>