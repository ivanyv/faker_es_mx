module Faker
  class Address
    MX_STATES = {
      :AGU => { :abbr => 'Ags',   :post_codes => 20..20, :name => 'Aguascalientes' },
      :BCN => { :abbr => 'BC',    :post_codes => 21..22, :name => 'Baja California' },
      :BCS => { :abbr => 'BCS',   :post_codes => 23..23, :name => 'Baja California Sur' },
      :CAM => { :abbr => 'Camp',  :post_codes => 24..24, :name => 'Campeche' },
      :CHP => { :abbr => 'Coah',  :post_codes => 25..27, :name => 'Coahuila' },
      :CHH => { :abbr => 'Col',   :post_codes => 28..28, :name => 'Colima' },
      :COA => { :abbr => 'Chis',  :post_codes => 29..30, :name => 'Chiapas' },
      :COL => { :abbr => 'Chih',  :post_codes => 31..33, :name => 'Chihuahua' },
      :DIF => { :abbr => 'DF',    :post_codes => 00..16, :name => 'Distrito Federal' },
      :DUR => { :abbr => 'Dgo',   :post_codes => 34..35, :name => 'Durango' },
      :GUA => { :abbr => 'Gto',   :post_codes => 36..38, :name => 'Guanajuato' },
      :GRO => { :abbr => 'Gro',   :post_codes => 39..41, :name => 'Guerrero' },
      :HID => { :abbr => 'Hgo',   :post_codes => 42..43, :name => 'Hidalgo' },
      :JAL => { :abbr => 'Jal',   :post_codes => 44..48, :name => 'Jalisco' },
      :MEX => { :abbr => 'Mex',   :post_codes => 50..57, :name => 'Estado de México' },
      :MIC => { :abbr => 'Mich',  :post_codes => 58..61, :name => 'Michoacán' },
      :MOR => { :abbr => 'Mor',   :post_codes => 62..62, :name => 'Morelos' },
      :NAY => { :abbr => 'Nay',   :post_codes => 63..63, :name => 'Nayarit' },
      :NLE => { :abbr => 'NL',    :post_codes => 64..67, :name => 'Nuevo León' },
      :OAX => { :abbr => 'Oax',   :post_codes => 68..71, :name => 'Oaxaca' },
      :PUE => { :abbr => 'Pue',   :post_codes => 72..75, :name => 'Puebla' },
      :QUE => { :abbr => 'Qro',   :post_codes => 76..76, :name => 'Querétaro' },
      :ROO => { :abbr => 'QRoo',  :post_codes => 77..77, :name => 'Quintana Roo' },
      :SLP => { :abbr => 'SLP',   :post_codes => 78..79, :name => 'San Luis Potosí' },
      :SIN => { :abbr => 'Sin',   :post_codes => 80..82, :name => 'Sinaloa' },
      :SON => { :abbr => 'Son',   :post_codes => 83..85, :name => 'Sonora' },
      :TAB => { :abbr => 'Tab',   :post_codes => 86..86, :name => 'Tabasco' },
      :TAM => { :abbr => 'Tamps', :post_codes => 87..89, :name => 'Tamaulipas' },
      :TLA => { :abbr => 'Tlax',  :post_codes => 90..90, :name => 'Tlaxcala' },
      :VER => { :abbr => 'Ver',   :post_codes => 91..96, :name => 'Veracruz' },
      :YUC => { :abbr => 'Yuc',   :post_codes => 97..97, :name => 'Yucatán' },
      :ZAC => { :abbr => 'Zac',   :post_codes => 98..99, :name => 'Zacatecas'}
    }

    @mx_states_iso = MX_STATES.keys

    class << self
      # Returns a state in Mexico.
      # Optionally ask for a specific state by its ISO code.
      def mx_state(iso = nil)
        iso ||= @mx_states_iso.rand
        MX_STATES[iso][:name]
      end

      # Returns the abbreviation of a state according to INEGI.
      # Optionally ask for a specific state by its ISO code.
      def mx_state_abbr(iso = nil)
        iso ||= @mx_states_iso.rand
        MX_STATES[iso][:abbr]
      end

      # Returns the abbreviation of a state by its ISO code.
      def mx_state_abbr_iso
        @mx_states_iso.rand.to_s
      end

      # Returns a five digit postal code.
      # Use the iso parameter to generate a valid
      # post code for the specified ISO state.
      #   mx_postcode(mx_state_abbr_iso)
      def mx_postcode(iso = nil)
        iso ||= @mx_states_iso.rand
        code = MX_STATES[iso][:post_codes].to_a.rand
        "%05d" % (code * 1000 + rand(1000))
      end
    end
  end
end
