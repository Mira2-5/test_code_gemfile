def day_trader(prices)

# Initialisation : on part du principe qu’on achète le premier jour (0) et vend le deuxième (1)
  best_buy_day = 0
  best_sell_day = 1
  max_profit = prices[1] - prices[0]  # Profit associé à ces 2 jours

  # Boucle sur tous les jours possibles d’achat
  for buy_day in 0...(prices.length - 1)
    # Pour chaque jour d’achat, on teste tous les jours suivants pour la vente
    for sell_day in (buy_day + 1)...prices.length
      # Calcul du profit pour cette paire (achat/vendue)
      profit = prices[sell_day] - prices[buy_day]

      # Si ce profit est meilleur que le meilleur trouvé jusqu'ici
      if profit > max_profit
        # On garde en mémoire cette meilleure paire de jours
        max_profit = profit
        best_buy_day = buy_day
        best_sell_day = sell_day
      end
    end
  end

  # Si même le meilleur profit trouvé est négatif => aucun intérêt à trader
  return nil if max_profit < 0

  # Sinon, on retourne la meilleure paire de jours
  [best_buy_day, best_sell_day]
end
