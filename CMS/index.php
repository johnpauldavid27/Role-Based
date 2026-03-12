<?php
declare(strict_types = 1);
ini_set('display_errors', 1);
error_reporting(E_ALL);
require 'cms/includes/database-connection.php';
require 'cms/includes/functions.php';

$sql = "SELECT a.art_id AS id, a.title, a.summary, a.category_id, a.member_id,
               c.name        AS category,
               CONCAT(m.forename, ' ', m.surname) AS author,
               i.file        AS image_file,
               i.alt         AS image_alt
          FROM article    AS a
          JOIN category   AS c ON a.category_id = c.cat_id
          JOIN member     AS m ON a.member_id   = m.mem_id
          LEFT JOIN image AS i ON a.image_id    = i.img_id
         WHERE a.published = 1
         ORDER BY a.art_id DESC
         LIMIT 6;";
$articles = pdo($pdo, $sql)->fetchAll();

$sql = "SELECT cat_id AS id, name FROM category WHERE navigation = 1;";
$navigation  = pdo($pdo, $sql)->fetchAll();

$section     = '';
$title       = 'Role Based';
$description = 'A showcase of classes from Terraria';
?>
<?php include 'cms/includes/header.php'; ?>
    <main class="container grid" id="content">
        <?php foreach ($articles as $article) { ?>
        <article class="summary">
            <a href="article.php?id=<?= $article['id'] ?>">
                <img src="cms/uploads/<?= html_escape($article['image_file'] ?? 'blank.png') ?>"
                     alt="<?= html_escape($article['image_alt']) ?>">
                <h2><?= html_escape($article['title']) ?></h2>
                <p><?= html_escape($article['summary']) ?></p>
            </a>
            <p class="credit">
                Posted in <a href="category.php?id=<?= $article['category_id'] ?>">
                    <?= html_escape($article['category']) ?></a>
                by <a href="member.php?id=<?= $article['member_id'] ?>">
                    <?= html_escape($article['author']) ?></a>
            </p>
        </article>
        <?php } ?>
    </main>
<?php include 'cms/includes/footer.php'; ?>