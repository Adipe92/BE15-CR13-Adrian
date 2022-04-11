<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;


use App\Entity\Events;
use App\Form\EventType;

class EventController extends AbstractController
{
    #[Route('/', name: 'event')]
    public function index(): Response
    {
        return $this->render('event/index.html.twig', [
            'controller_name' => 'EventController',
        ]);
    }

    #[Route('/create', name: 'event_create')]
   public function create(Request $request, ManagerRegistry $doctrine): Response
   {
       $event = new Events();
       $form = $this->createForm(EventType::class, $event);

       $form->handleRequest($request);

/* Here we have an if statement, if we click submit and if  the form is valid we will take the values from the form and we will save them in the new variables */
       if ($form->isSubmitted() && $form->isValid()) {
           $now = new \DateTime('now');

 // taking the data from the inputs with the getData() function and assign it to the $todo variable
           $event = $form->getData();
           $event->setCreateDate($now);  // this field is not included in the form so we set the today date
           $em = $doctrine->getManager();
           $em->persist($event);
           $em->flush();

           $this->addFlash(
               'notice',
               'Event Added'
               );
     
           return $this->redirectToRoute('event');
       }

/* now to make the form we will add this line form->createView() and now you can see the form in create.html.twig file  */
       return $this->render('event/create.html.twig', ['form' => $form->createView()]);
   }
}
