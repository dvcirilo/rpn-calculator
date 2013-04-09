require "rubygems"
require "gtk2"

class InterfaceCalculadora
  def initialize
    builder = Gtk::Builder.new
    builder.add_from_file('calculadora.glade')
    builder.connect_signals {|handler| method(handler) }
    builder.get_object("window1").show_all
    @buffer = ""
    Gtk::main
  end

  def on_button_clicked button
    case button.builder_name
    when "b1"
      @buffer.concat '1'
    when "b2"
      @buffer.concat '2'
    when "b3"
      @buffer.concat '3'
    when "b4"
      @buffer.concat '4'
    when "b5"
      @buffer.concat '5'
    when "b6"
      @buffer.concat '6'
    when "b7"
      @buffer.concat '7'
    when "b8"
      @buffer.concat '8'
    when "b9"
      @buffer.concat '9'
    when "b0"
      @buffer.concat '0'
    when "comma"
      @buffer.concat '.'
    when "enter"
      @buffer = ""
    when "del"
      @buffer.chop!
    end

    case button.builder_name
    when "b1", "b2", "b3", "b4", "b5", "b6", "b7", "b8", "b9", "b0", "comma", "del", "enter"
      puts @buffer      
    end
  end

  def destroy
    puts "Mandaram sair..."
    Gtk.main_quit
  end
end

interface = InterfaceCalculadora.new
