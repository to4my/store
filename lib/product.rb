class Product
  attr_accessor :price, :amount, :title

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @title = params[:title]
    @hh = params
  end

  def update(params)

  # params.each do |key|
  #   if key.nil?
  #     @key = @hh[key]
  #   else
  #     @key = key
  #   end
  # end

    if params[:price].nil?
      @price = @hh[:price]
    else
      @price = params[:price]
    end

    if params[:amount].nil?
      @amount = @hh[:amount]
    else
      @amount = params[:amount]
    end

    if params[:title].nil?
      @title = @hh[:title]
    else
      @title = params[:title]
    end

  def to_s

  end
  end
  end

