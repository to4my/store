class Product
  attr_accessor :price, :amount, :title

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @title = params[:title]
    @hh = params
  end

  def update(params)
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
     # params[:price].nil? ? @hh[:price] : params[:price]
     # params[:amount].nil? ? @hh[:amount] : params[:amount]
     # params[:title].nil? ? @hh[:title] : params[:title]

  def to_s

  end
  end
  end

