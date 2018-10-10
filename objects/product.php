<?php
class Product {

    private $conn;

    // Note: update table names, column names in here
    public $product_table                          = 'tbl_product';

    public $product_table_primary_key              = 'product_id';

    public $feature_table                            = 'tbl_feature';

    public $feature_table_primary_key                = 'feature_id';

    public $linking_table                          = 'tbl_product_feature';

    public $linking_table_ref_product_table_column = 'product_id';

    public $linking_table_ref_feature_table_column   = 'feature_id';

    public function __construct($db) {
        $this->conn = $db;
    }

    function getProducts() {
        // Notes:
        // 1. If you configure above properly, you shouldn't need to modify the query here to make it work
        // 2. However, feel free to modify it if you know what you are doing.

        $query = 'SELECT * FROM ' . $this->product_table;

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getProductFeatures($product_id) {
        // Notes:
        // 1. If you configure above properly, you shouldn't need to modify the query here to make it work
        // 2. However, feel free to modify it if you know what you are doing.

        $query = 'SELECT feature.* FROM ' . $this->linking_table . ' AS linking, ' . $this->feature_table . ' AS feature';
        $query .= ' WHERE feature.' . $this->feature_table_primary_key . ' = linking.' . $this->linking_table_ref_feature_table_column;
        $query .= ' AND linking.' . $this->linking_table_ref_product_table_column . ' = ' . $product_id;

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
}