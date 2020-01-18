package com.akitoy.proyecto.service;

import com.akitoy.proyecto.model.Producto;

import java.util.List;

public interface ProductoService {
    List<Producto> getAllProductos();

    List<Producto> getAllProductos(long id);

    Producto getProductoById(long id);

    void saveOrUpdate(Producto producto);

    void deleteProducto(long id);

    void deleteAllProductos();

    Long contarProductos();

}
