package cl.praxis.desafioproveedores.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SupplierDTO {
    private int id;
    private String name;
    private String rut;
    private String address;
    private String email;
    private String phone;
    private String contactName;
    private String contactPhone;

    public SupplierDTO(String name, String rut, String address, String email, String phone, String contactName, String contactPhone) {
        this.name = name;
        this.rut = rut;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.contactName = contactName;
        this.contactPhone = contactPhone;
    }
}
