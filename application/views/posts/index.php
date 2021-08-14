<h2 class="text-center mt-2 mb-4 pt-5 text-info"><?= $title?></h2>

	<div class="row align-items-center">
		<?php foreach($posts as $post) : ?>
		<div class="col-lg-4">
			<div class="card mb-3">
				<img class="card-img-top border-bottom p-3" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image'];?>">
				<div class="card-body text-center">
					<h5 class="card-title mb-3"><?php echo $post['title']; ?></h5>
					<h6 class="card-subtitle font-italic text-black-50 mb-2 font-weight-lighter"><?php echo $post['name']; ?></h6>
					<p class="card-text"><?php echo word_limiter($post['body'], 20); ?></p>
					<a href="<?php echo site_url('/posts/' .$post['slug']); ?>" class="btn btn-info">Read More</a>
				</div>
			</div>
		</div>
		<?php endforeach; ?>
	</div>
	
