./app/controllers/Rest/OrderlistController.php:            $orderBy = ' ORDER BY `O`.`offer_price` DESC';
./app/controllers/Rest/OrderlistController.php:            $orderBy = ' ORDER BY `O`.`offer_price` ASC';
./app/controllers/Rest/MyserviceController.php:        $price           = Input::get('price');
./app/controllers/Rest/MyserviceController.php:            ->update(array('price' => $price));
./app/controllers/Rest/MyserviceController.php:        $myservice->price = $price;
./app/controllers/Rest/UserController.php:            $orderBy = ' ORDER BY `M`.`price` DESC';
./app/controllers/Rest/UserController.php:            $orderBy = ' ORDER BY `M`.`price` ASC';
./app/controllers/Rest/OrderController.php:        $order->offer_price         = Input::get('offer_price', '');  //约定价格
./app/controllers/Rest/OrderController.php:        $order->transaction_price   = Input::get('offer_price', '');  //最终成交价  暂时 ＝ 预定价格
./app/controllers/Rest/OrderController.php:        $transaction_price  = Input::get('transaction_price', $order->offer_price);
./app/controllers/Rest/OrderController.php:            ->update(array('order_status' => Orders::OS_WORK_DONE, 'transaction_price' => $transaction_price));
./app/controllers/Rest/OrderController.php:        $order->transaction_price = $transaction_price;
./app/database/o2omobile_2015-01-11.sql:  `price` decimal(10,2) NOT NULL,
./app/database/o2omobile_2015-01-11.sql:  `offer_price` decimal(10,2) NOT NULL COMMENT '价格',
./app/database/o2omobile_2015-01-11.sql:  `transaction_price` decimal(10,2) NOT NULL COMMENT '最终成交价',
./app/models/Applyservice.php:                'price'              => $this->price,
./app/models/User.php:            "current_service_price" => $this->price,
./app/models/User.php:            "current_service_price" => $this->price,
./app/models/Orders.php:                'offer_price'        => $this->offer_price,             // 初始价格
./app/models/Orders.php:                'transaction_price'  => $this->transaction_price,       // 成交价格
./app/models/MyService.php:                'price'              => $this->price,
./app/views/Backend/pages/order.blade.php:                    <td>{{empty($order->transaction_price) ? '未成交' : $order->transaction_price}}</td>
./app/views/Backend/pages/order-details.blade.php:                            ￥{{$order->offer_price}}
./app/views/Backend/pages/order-details.blade.php:                            {{empty($order->transaction_price) ? '无' : $order->transaction_price}}
./app/views/Backend/pages/order-details.blade.php:                        @if($order->transaction_price != '0.00')
./Doc/O2OMobile1.0.sql:  `price` decimal(10,2) NOT NULL,
./Doc/O2OMobile1.0.sql:  `offer_price` decimal(10,2) NOT NULL COMMENT '价格',
./Doc/O2OMobile1.0.sql:  `transaction_price` decimal(10,2) NOT NULL COMMENT '最终成交价',
./vendor/nesbot/carbon/readme.md:    protected $price;
./vendor/nesbot/carbon/readme.md:    public function __construct($price)
./vendor/nesbot/carbon/readme.md:        $this->price = $price;
./vendor/nesbot/carbon/readme.md:        return $this->price * $multiplier;
./public/frontend/css/main.css:.jobs .item .price {
./public/frontend/css/main.css:.orderList .item .attr li.price {
