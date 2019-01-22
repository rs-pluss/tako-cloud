package sia.tacocloud.data.order;

import sia.tacocloud.model.Order;

public interface OrderRepository {

    Order save(Order order);
}
