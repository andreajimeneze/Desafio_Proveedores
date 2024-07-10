package cl.praxis.desafioproveedores.dao;

import cl.praxis.desafioproveedores.models.SupplierDTO;

import java.util.List;

public interface SupplierDAO {
    public SupplierDTO selectSupplierById(int id);
    public List<SupplierDTO> selectSuppliers();
    public SupplierDTO insertSupplier(SupplierDTO supplier);
    public SupplierDTO updateSupplier(SupplierDTO supplier);
    public boolean deleteSupplier(int id);
}
