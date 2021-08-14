<h2 class="my-4 text-info"><?= $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('posts/update'); ?>

  <input type="hidden" name="id" value="<?php echo $post['id']; ?>">

  <div class="form-group">
    <small><label class="text-uppercase font-weight-bold">Title</label></small>
    <input type="text" class="form-control" placeholder="Add Title" name="title" value="<?php echo $post['title']; ?>">
  </div>

  <div class="form-group">
    <small><label class="text-uppercase font-weight-bold">Body</label></small>
    <textarea id="editor1" class="form-control" placeholder="Add Body" name="body"><?php echo $post['body']; ?></textarea> 
  </div>

  <div class="form-group">
    <small><label class="text-uppercase font-weight-bold">Category</label></small>

    <select name="category_id" class="form-control">

      <?php foreach($categories as $category): ?>
        <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?></option>
      <?php endforeach; ?>  

    </select>

  </div>
  
  <button type="submit" class="btn btn-info">Submit</button>

</form>

