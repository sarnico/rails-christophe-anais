class PagesController < ApplicationController
   skip_before_action :authenticate_user!, only: :home
  def home
      set_meta_tags title: "Dr Christophe | Consultations",
                keywords: "Chirurgie, orthopédique, Orthopédie, pied, cheville, Arlon, Namur, Docteur, Consultation",
                description: " Dr Anaïs Christophe. Chirurgie orthopédique. Chirurgie du pied et de la cheville. Consultation à Namur et Arlon."
  end
end
