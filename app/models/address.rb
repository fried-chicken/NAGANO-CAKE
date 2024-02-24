class Address < ApplicationRecord
    belongs_to :customer

    def address_display
      postal_code_str = postal_code.present? ? postal_code : ''
      address_str = address.present? ? address : ''
      name_str = name.present? ? name : ''

      '〒' + postal_code_str + ' ' + address_str + '　' + name_str + '　　'
    end
end
