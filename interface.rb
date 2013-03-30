require "rubygems"
require "gtk2"

class InterfaceCalculadora
  def initialize
    builder = Gtk::Builder.new
    builder.add_from_file('calculadora.glade')
    builder.connect_signals {|handler| method(handler) }
    builder.get_object("window1").show_all
    Gtk::main
  end

  def on_button_clicked w
    puts "==="
    puts w.builder_name
  end

  def destroy
    puts "Mandaram sair..."
    Gtk.main_quit
  end
end

interface = InterfaceCalculadora.new
