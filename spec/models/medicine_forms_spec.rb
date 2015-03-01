require 'rails_helper'

RSpec.describe MedicineForm do
  describe '#buy!' do
    context 'MedicineForm is on storage' do
      let!(:medicine_form) { FactoryGirl.create(:medicine_form) }

      it 'reduces medicine_form quantity on storage' do
        expect { medicine_form.buy! }.to change { medicine_form.quantity_storage }.by(-1)
      end

      it 'creates a new order with a reference on medicine_form' do
        expect { medicine_form.buy! }.to change { medicine_form.orders.count }.by(1)
      end
    end

    context 'No MedicineForm on storage' do
      let!(:medicine_form) { FactoryGirl.create(:medicine_form, quantity_storage: 0) }

      it 'not changes quantity on storage' do
        expect { medicine_form.buy! }.not_to change { medicine_form.quantity_storage }
      end

      it 'not changes orders count' do
        expect { medicine_form.buy! }.not_to change { Order.count }
      end
    end
  end
end
