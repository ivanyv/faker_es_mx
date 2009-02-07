module Faker
  class Address
    class << self
      # Returns a state in Mexico.
      def mx_state
        ['Aguascalientes', 'Baja California', 'Baja California Sur', 'Campeche',
         'Coahuila', 'Colima', 'Chiapas', 'Chihuahua', 'Distrito Federal',
         'Durango', 'Guanajuato', 'Guerrero', 'Hidalgo', 'Jalisco', 'Estado de México',
         'Michoacán', 'Morelos', 'Nayarit', 'Nuevo León', 'Oaxaca', 'Puebla',
         'Querétaro', 'Quintana Roo', 'San Luis Potosí', 'Sinaloa', 'Sonora',
         'Tabasco', 'Tamaulipas', 'Tlaxcala', 'Veracruz', 'Yucatán',
        'Zacatecas'].rand
      end

      # Returns the abbreviation of a state according to INEGI.
      def mx_state_abbr
        %w(Ags BC BCS Camp Coah Col Chis Chih DF Dgo Gto Gro Hgo Jal Mex Mich Mor
           Nay NL Oax Pue Qro QRoo SLP Sin Son Tab Tamps Tlax Ver Yuc).rand
      end

      # Returns the abbreviation of a state by its ISO code.
      def mx_state_abbr_iso
        %w(AGU BCN BCS CAM CHP CHH COA COL DIF DUR GUA GRO HID JAL MEX MIC
           MOR NAY NLE OAX PUE QUE ROO SLP SIN SON TAB TAM TLA VER YUC ZAC).rand
      end

      # Returns a five digit postal code
      def mx_postcode
        Faker.numerify('#####')
      end
    end
  end
end