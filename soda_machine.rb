class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
  end

  def sell(soda_brand)
    soda_to_sell = find_soda(soda_brand)
    return nil if soda_to_sell == nil
    @cash += soda_to_sell.price
    @sodas.delete(soda_to_sell)
  end
end
