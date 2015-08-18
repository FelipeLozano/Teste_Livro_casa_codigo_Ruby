class Carro
  attr_accessor :velocidade, :ligado

  def disparar_motor_de_arranque
    sleep 10
    "Disparado"
  end

  def ligar_motor
    if disparar_motor_de_arranque
      @ligado = true
      @velocidade = 0
      if aumentar_velocidade
        "Carro ligado"
      end
    else
      false
    end
  end
  
  def aumentar_velocidade
    sleep 10
  end

  def acelerar(velocidade = 80)
    if @ligado
      @velocidade = velocidade
      "Andando à #{velocidade} km/h"
    else
      return false
    end
  end

  def parar
    @velocidade = 0
    "Carro parado"
  end

  def desligar_motor
    if @velocidade > 0
      return false
    else
      @ligado = false
      "Motor desligado"
    end
  end
end