
<h2 class="text-info mt-4"><?php echo $post['title']; ?></h2>

<small class="text-muted">Posted on: <?php echo $post['created_at']; ?></small>

<div class="row justify-content-center">
	<img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image'];?>">
</div>
<div class = "post-body">
	<?php echo $post['body']; ?>
</div>


<?php if(!$this->session->userdata('logged_in')) : ?>
	<div class="row d-none">
		<a class="btn btn-info mr-2" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
		<?php echo form_open('posts/delete/' .$post['id']); ?>
		<input type="submit" value="Delete" class="btn btn-danger">
	</div>
<?php endif; ?>

<?php if($this->session->userdata('logged_in')) : ?>
	<div class="row">
		<a class="btn btn-info mr-2" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
		<?php echo form_open('posts/delete/' .$post['id']); ?>
		<input type="submit" value="Delete" class="btn btn-danger">
	</div>
<?php endif; ?>





