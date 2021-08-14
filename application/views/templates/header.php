<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Trio Academy</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
		<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/style.css">
		<link rel="icon" type="image/png" href="./assets/images/trio-logo.png">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet">
		<script src="http://cdn.ckeditor.com/4.5.11/standard/ckeditor.js"></script>
	</head>

	<body>

		<nav id="main-nav" class="navbar navbar-light bg-light navbar-expand-md py-0">
        	<div class="container">
        			<a href="<?php echo base_url(); ?>" class="navbar-brand text-uppercase text-secondary font-weight-bold py-4"><span class="text-info">trio</span>academy</a>

			        <button class="navbar-toggler" data-toggle="collapse" data-target="#nav-links">
			            <span class="navbar-toggler-icon"></span>
			        </button>
    
		        	<div class="collapse navbar-collapse" id="nav-links">
			            <ul class="navbar-nav">
			                <li class="nav-item">
			                    <a href="<?php echo base_url(); ?>about" class="nav-link">ABOUT</a>
			                </li>
			                <li class="nav-item">
			                    <a href="<?php echo base_url(); ?>posts" class="nav-link">COURSES</a>
			                </li>
			                <li class="nav-item">
			                    <a href="<?php echo base_url(); ?>categories" class="nav-link">CATEGORIES</a>
			                </li>

			                <?php if(!$this->session->userdata('logged_in')) : ?>
				                <li class="nav-item">
				                    <a href="<?php echo base_url(); ?>users/login" class="nav-link">LOGIN</a>
				                </li>
				                <li class="nav-item">
				                    <a href="<?php echo base_url(); ?>users/register" class="nav-link"> SIGN UP</a>
				                </li>
				            <?php endif; ?>

				            <?php if($this->session->userdata('logged_in')) : ?>
				            	<li class="nav-item">
				                    <a href="<?php echo base_url(); ?>posts/create" class="nav-link">Create Post</a>
				                </li>
				                <li class="nav-item">
				                    <a href="<?php echo base_url(); ?>categories/create" class="nav-link">Create Category</a>
				                </li>
				                <li class="nav-item">
				                    <a href="<?php echo base_url(); ?>users/logout" class="nav-link">LOGOUT</a>
				                </li>
				            <?php endif; ?>	

			            </ul>
		        	</div>
        	</div>
    	</nav>

		<div class ="container">



