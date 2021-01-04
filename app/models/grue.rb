class Grue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  TYPEOF = ['Grue Mobile Automotrice (AT)',
           'Grue Mobile Automotrice Tout Terrain (ATT)',
           'Grue Mobile Automotrice Sur Porteur (SP)',
           'Grue à Montage Automatisé (GMA)',
           'Grues à Montage Rapide (GMR)',
           'Grues à Tour à Montage Rapide (GTMR)',
           'Grues à Montage par Éléments (GME)']
end
