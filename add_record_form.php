<?php
require('database.php');
$query = 'SELECT *
          FROM categories
          ORDER BY categoryID';
$statement = $db->prepare($query);
$statement->execute();
$categories = $statement->fetchAll();
$statement->closeCursor();
?>
<!-- the head section -->
 <div class="container">
<?php
include('includes/header.php');
?>
        <form action="add_record.php" method="post" enctype="multipart/form-data"
              id="add_record_form">

            <label>Category:</label>
            <select name="category_id">
            <?php foreach ($categories as $category) : ?>
                <option value="<?php echo $category['categoryID']; ?>">
                    <?php echo $category['categoryName']; ?>
                </option>
            <?php endforeach; ?>
            </select>
            <br>
            <br>
            <label>Name:</label>
            <input type="input" name="name" placeholder="It's name....">
            <br>

            <label>List Price:</label>
            <input type="input" name="price" placeholder="It's price....">
            <br>        
            
            <label>Image:</label>
            <input type="file" name="image" accept="image/*" />
            <br>

            <label>Details:</label>
            <input type="input" name="details" placeholder="It's details....">
            <br>

            <label>Ingredients:</label>
            <input type="input" name="ingredients" placeholder="It's ingredients....">
            <br>

            <label>Symptoms:</label>
            <input type="input" name="symptoms" placeholder="It's symptoms....">
            <br>
            
            <label>&nbsp;</label>
            <input class="button4" type="submit">
            
            <br>
        </form>
        <p><a href="index.php" class="button5">View Homepage</a></p>
    <?php
include('includes/footer.php');
?>