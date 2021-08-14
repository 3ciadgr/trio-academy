<h2 class="my-4 text-info"><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('categories/create'); ?>
	<div class="form-group">
		<small><label class="text-uppercase font-weight-bold">Name</label></small>
		<input type="text" name="name" class="form-control" placeholder="Enter name">
	</div>
	<button type="submit" class="btn btn-info">Submit</button>
</form>