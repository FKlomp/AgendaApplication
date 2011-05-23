class AgendasController < ApplicationController

  def new
    @item = Item.new;
  end

  def get_agenda
    @items = Item.find(:all, :conditions => ["start_date >= '#{Time.at(params['start'].to_i).to_formatted_s(:db)}' and end_date <= '#{Time.at(params['end'].to_i).to_formatted_s(:db)}'"] )
    items = []
    @items.each do |item|
      items << {:id => item.id, :title => item.title, :description => item.description || "Some cool description here...", :start => "#{item.start_date.iso8601}", :end => "#{item.end_date.iso8601}", :allDay => false, :recurring => false}
    end
    render :text => items.to_json
  end
end
