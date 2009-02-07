module Faker
  class Name
    MX_NAMES = {
      :female => %w(
        Maria Guadalupe Carmen Rosa Claudia Fernanda Sofia Ana Karla Laura
        Martha Alejandra Andrea Silvia Patricia Veronica Monica Margarita
        Gabriela Isabel Alicia Gloria Elena Rosario Mariana Yolanda Julia
        Cecilia Angelica Carolina
      ),
      :male => %w(
        Juan Jose Carlos Luis Jesus Manuel Antonio Alberto Francisco Alejandro
        Fernando Roberto Jorge Eduardo Mario Marco Miguel Victor Rogelio Daniel
        Sergio Arturo Alfredo Martin Armando Eduardo Enrique Hector
      )
    }

    MX_LAST_NAMES = %w(
      Hernandez Garcia Martinez Lopez Gonzalez Gomez Rodriguez Perez Sanchez
      Rivera Ramirez Flores Villegas Guerrero Monroy Naranjo Vega Fernandez
      Jimenez Ruiz Diaz Moreno Alvarez Munoz Romero Gutierrez Navarro Torres
      Vazquez Ramos Serrano Castro Molina Morales Ortega Delgado Rubio Iglesias
      Santos Castillo Cruz Nunez Garrido Medina Lozano Leon
    )

    MxFormats = [
      Proc.new { [ mx_prefix, mx_first_name_f, mx_last_name ] },
      Proc.new { [ mx_prefix, mx_first_name_m, mx_last_name ] },
      Proc.new { [ mx_first_name_f, mx_last_name ] },
      Proc.new { [ mx_first_name_f, mx_last_name ] },
      Proc.new { [ mx_first_name_f, mx_last_name ] },
      Proc.new { [ mx_first_name_f, mx_last_name ] },
      Proc.new { [ mx_first_name_m, mx_last_name ] },
      Proc.new { [ mx_first_name_m, mx_last_name ] },
      Proc.new { [ mx_first_name_m, mx_last_name ] },
      Proc.new { [ mx_first_name_m, mx_last_name ] }
    ]

    MX_PREFIXES = {
      :female => %w(Sra. Srta. Dr. Prof.),
      :male => %w(Sr. Dr. Prof.)
    }

    class << self
      # Returns a random full name using any of _MxFormats_.
      def mx_name
        MxFormats.rand.call.join ' '
      end

      # Returns a random first name.
      def mx_first_name(gender = nil, double = false)
        gender ||= [ :male, :female ].rand
        name = MX_NAMES[gender].rand
        name += ' ' + MX_NAMES[gender].rand if double
        name
      end

      # Returns a random female first name.
      def mx_first_name_f(double = false)
        mx_first_name(:female, double)
      end

      # Returns a random male first name.
      def mx_first_name_m(double = false)
        mx_first_name(:male, double)
      end

      # Returns a random last name.
      def mx_last_name(double = false)
        name = MX_LAST_NAMES.rand
        name += ' ' + MX_LAST_NAMES.rand if double
        name
      end

      # Returns a random prefix.
      def mx_prefix(gender = nil)
        gender ||= [ :male, :female ].rand
        MX_PREFIXES[gender].rand
      end
    end
  end
end
